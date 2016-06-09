class
	CUSTOMER

create
	make

feature 

	id: INTEGER
	haircuts: INTEGER
	shop : separate SHOP
	sofa : separate SOFA
	chair : separate CHAIR
	barber : detachable separate BARBER
	cash_desk : separate CASHDESK
	my_ticket : INTEGER assign set_ticket

	set_ticket (i: INTEGER)
		do
			my_ticket := i
		end

	make (a_id: INTEGER; a_haircuts: INTEGER; a_shop: separate SHOP;a_sofa: separate SOFA;  a_chair: separate CHAIR;  a_cash_desk: separate CASHDESK)
		require
			haircuts: a_haircuts > 0
		do
			id := a_id
			haircuts := a_haircuts
			shop := a_shop
			sofa := a_sofa
			chair := a_chair
			cash_desk := a_cash_desk
		end

feature {APPLICATION}
	live
		do
			wait (shop)
			from
			until
				haircuts <= 0
			loop
				print ("Customer "+id.out+" is alive %N")
				step
			end
		end

feature 

	wait (s: separate SHOP)
		require
			s.open
		do
		end

	enter (s: separate SHOP): BOOLEAN
		do
			print ("Customer "+id.out+" tries to enter the shop%N")
			if s.has_room then
				my_ticket := s.enter
				Result := True
			else
				Result := False
			end
		end

	sit_on_sofa (s: separate SOFA)
		require
			s.has_room and s.allowed (my_ticket)
		do
			separate shop as sh do 
				sh.leave_room
			end
			
			s.update (my_ticket)
			my_ticket := s.sit_down
			print ("Customer "+id.out+" sits on sofa with ticket "+my_ticket.out+"%N")
		end


	pick_free_barber_for_haircut (c: separate CHAIR): separate BARBER
		require
			c.has_room  and c.allowed(my_ticket)
		local
			b: separate BARBER
		do
			b := c.head
			separate b as barb do 
				print ("Customer "+id.out+" will be served by Barber "+barb.id.out+"%N")
			end
			c.update(my_ticket)
			Result := b
		end

	pick_free_barber_for_checkout (c: separate CHAIR): separate BARBER
		require
			c.has_room
		local
			b: separate BARBER
		do
			b := c.head
			separate b as barb do 
				print ("Customer "+id.out+" will be served by Barber "+barb.id.out+"%N")
			end
			Result := b
		end

	get_hair_cut (b: separate BARBER)
		do
			b.cut_hair (Current)
			haircuts := haircuts - 1
			separate chair as c
				do
					c.sit (b)
				end
			print ("Customer "+id.out+" got an haircut%N")

		end

	checkout (b: separate BARBER; cd: separate CASHDESK)
		require
			cd.has_room
		do
			cd.checkout (b, Current)
			separate chair as c
				do
					c.sit (b)
				end
		end

	leave (s: separate SHOP)
		require 
			not s.empty
		do
			s.leave
		end

	step
		do	
			if enter (shop) then

				print ("Customer "+id.out+" tries to sit%N")
				sit_on_sofa (sofa)
				

				print ("Customer "+id.out+" tries to get a barber for an haircut%N")

				-- try_to_wait (chair)
				barber := pick_free_barber_for_haircut (chair)

				-- print ("Customer "+id.out+" stands up%N")

				separate sofa as s
					do
						print ("Customer "+id.out +" stands up from the sofa%N")
						s.stand_up
					end

				print ("Customer "+id.out+" tries to get an haircut%N")

				if attached barber as b then
					get_hair_cut (b)
				end

				print ("Customer "+id.out+" tries to get a barber to pay%N")

				barber := pick_free_barber_for_checkout (chair)

				if attached barber as b then
					checkout (b, cash_desk)
				end

				print ("Customer "+id.out+" leaves the shop%N")
				leave (shop)

			else
				print ("Customer " + id.out + " will come back later.%N")
				(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
			end
		end

end

