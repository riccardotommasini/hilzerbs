note
	description	: "Objects that describe the behaviour of a customer"
	author		: "Marco Balduini and Riccardo Tommasini"
	date		: "2016/06/12"
	reviewer	: "Bertrand Meyer"
	revision	: "0.1"

class
	CUSTOMER

create
	make

feature {NONE} -- Initialization

	make (a_id: INTEGER; a_haircuts: INTEGER; a_room: separate ROOM; a_sofa: separate SOFA;  a_barbers: separate BARBER_LIST;  a_cash_desk: separate CASHDESK)
		-- Initialize with `a_id' as is
		-- a_haircuts as haircuts
		-- a_room as room
		-- a_sofa as sofa
		-- a_barbers as barbers
		-- a_cash_desk as cash_desk

		require
			haircuts: a_haircuts > 0
			id: a_id > 0
		do
			id := a_id
			haircuts := a_haircuts
			room := a_room
			sofa := a_sofa
			barbers := a_barbers
			cash_desk := a_cash_desk
		ensure
			haircuts = a_haircuts
			id = a_id
		end

feature 
	
	id: INTEGER
	haircuts: INTEGER
	room : separate ROOM
	sofa : separate SOFA
	barbers : separate BARBER_LIST
	barber : detachable separate BARBER
	cash_desk : separate CASHDESK
	my_ticket : INTEGER assign set_ticket

	over: BOOLEAN
		do
			Result := haircuts <= 0
		end

	set_ticket (i: INTEGER)
		do
			my_ticket := i
		end

feature {BARBERSHOP}
	live
		do
			wait (room)
			from
			until
				over
			loop
				print ("Customer "+id.out+" is alive %N")
				step
			end
		end

feature {NONE} -- Workaround to synchronize the process start


	wait (s: separate ROOM)
		require
			s.open
		do
		end

feature {NONE} -- Life actions

	enter (s: separate ROOM): BOOLEAN
		-- Enter the shop, i.e. the waiting room
		do
			print ("Customer "+id.out+" enters the room%N")
			if s.has_room then
				my_ticket := s.enter
				Result := True
			else
				Result := False
			end
		end

	sit_on_sofa (s: separate SOFA)
		-- sit on the shop sofa if there is room, otherwise it waits
		require
			s.has_room and s.allowed (my_ticket)
		do
			separate room as sh do 
				sh.leave_room
			end
			
			s.update (my_ticket)
			my_ticket := s.sit_down
			print ("Customer "+id.out+" sits on sofa with ticket "+my_ticket.out+"%N")
		end


	sit_on_chair (c: separate BARBER_LIST)
		-- gets a free barber from the barber array with FIFO ordering
		require
			c.has_room  and c.allowed(my_ticket)
		local
			b: separate BARBER
		do
			b := c.head
			separate b as barb do 
				print ("Customer "+id.out+" sits on Barber "+barb.id.out+" s barbers %N")
			end
			c.update(my_ticket)

			separate sofa as s -- moved here because I want the customer to stand before it releases the lock on barbers
					do
						print ("Customer "+id.out +" stands up from the sofa%N")
						s.stand_up
					end
			barber := b
		end

	ask_for_checkout (c: separate BARBER_LIST)
		-- gets a free barber from the barber array, no FIFO guaranteed
		require
			c.has_room
		local
			b: separate BARBER
		do
			b := c.head
			separate b as barb do 
				print ("Customer "+id.out+" will pay Barber "+barb.id.out+"%N")
			end
			barber := b
		end

	get_hair_cut (brb: detachable separate BARBER)
		do
			if attached brb as b then
					t_get_hair_cut (b)
			end
		end
	t_get_hair_cut (b: separate BARBER)
		-- allows to interact with the barber to get an haircut
		do
			b.cut_hair (Current)
			haircuts := haircuts - 1
			separate barbers as c
				do
					c.sit (b)
				end
			print ("Customer "+id.out+" got an haircut%N")

		end

	checkout (brb: detachable separate BARBER; cd: separate CASHDESK)
		do
			if attached brb as b then
				t_checkout(b, cd)
			end
		end

	t_checkout (b: separate BARBER; cd: separate CASHDESK)
		-- allows to pay, no FIFO ordering guaranteed
		require
			cd.has_room
		do
			cd.checkout (b, Current)
			separate barbers as c
				do
					c.sit (b)
				end
		end

	leave (s: separate ROOM)
		require 
			not s.empty
		do
			print ("Customer "+id.out+" leaves the room%N")
			s.leave
		end

	step
		-- a cycle of life
		do	
			if enter (room) then

				sit_on_sofa (sofa) -- if there is no room it will wait in the room (queue); FIFO
	
				sit_on_chair (barbers) -- if one is available

				get_hair_cut (barber)

				ask_for_checkout (barbers)

				checkout (barber, cash_desk)
				
				leave (room)

			else
				print ("Customer " + id.out + " will come back later.%N")
				(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
			end
		end

invariant
	id > 0
	haircuts >= 0
end

