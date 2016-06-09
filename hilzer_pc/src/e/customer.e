class
	CUSTOMER

create
	make

feature

	id: INTEGER
	haircuts: INTEGER
	
	shop: separate SHOP
	room : separate WAITING_ROOM
	sofa: separate SOFA; 
	cash_desk: separate CASH_DESK; 

	can_move: BOOLEAN

	make (a_id: INTEGER; a_haircuts: INTEGER; a_shop: separate SHOP; a_room: separate WAITING_ROOM; a_sofa: separate SOFA; a_cash_desk: separate CASH_DESK)
		
		require
			haircuts: a_haircuts > 0
		do
			id := a_id
			haircuts := a_haircuts
			shop := a_shop
			room := a_room
			sofa := a_sofa
			cash_desk := a_cash_desk

			can_move := False
		end

feature {NONE}

	enter_shop (s: separate SHOP; r: separate WAITING_ROOM)
		require
			s.has_room and r.has_room
		do	
			print ("Shop has free space in waiting room. Customer " + id.out+ " enters the shop%N")
			s.enter
			r.enter
		end

	leave_shop (s: separate SHOP)
		require
			not s.empty
		do
			print ("Customer " + id.out+ " leaves the shop%N")
			s.leave
		end

	sit_on_sofa (s: separate SOFA)
		require
			s.has_room
		do
			print ("Sofa has free space Customer " + id.out+ " sits%N")
			s.sit_down (Current)
		end

	wait_for_service
		do
			from
			until
				can_move
			loop
				print ("Customer " + id.out+ " waits for an haircut%N")
				(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
			end

			can_move := False

		end

	checkout (cd: separate CASH_DESK)
		require
			cd.has_room
		do
			print ("Customer " + id.out+ " attempts to pay the shop%N")
			cd.pay (Current)
		end

-- ensure less sits

feature {NONE}
	wait (s: separate SHOP)
		require
			s.open
		do
		end

	step
		do
			enter_shop (shop, room)
			sit_on_sofa (sofa)
			
			wait_for_service  -- wait for an hair cut

			checkout (cash_desk)

			wait_for_service -- wait for paying

			leave_shop (shop)
		end

feature {BARBER}
	cut
		do
			haircuts := haircuts - 1
			can_move := True
		end

	pay
		do
			can_move := True
		end
feature {APPLICATION}
	live
		-- LIFE CYCLE
		do
			from 
			until
				haircuts <= 0
			loop
				wait(shop)
				step
			end
		end

end	