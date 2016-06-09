class
	APPLICATION

create
	make

feature
	make
		local
			customer: separate CUSTOMER
			barber : separate BARBER
			cash_desk: separate CASH_DESK
			room: separate WAITING_ROOM
			sofa: separate SOFA
			shop: separate SHOP
		do
			
			create cash_desk.make 
			create sofa.make (sofa_size)
			create room.make (waiting_room_size)
			create shop.make (waiting_room_size + sofa_size)

			across (1 |..| barbers_num) as ib loop
				print("Creating barber "+ ib.item.out +"%N")
				create barber.make (ib.item, shop, sofa, cash_desk)
				separate barber as b do
					b.live
				end
			end

			across (1 |..| customer_num) as ic loop
				print("Creating customer "+ ic.item.out +"%N")
				create customer.make (ic.item, haircuts, shop, room, sofa, cash_desk)
				separate customer as c do
					c.live
				end
			end

			separate shop as s
				do
					s.open_shop
				end
		end

feature
	customer_num: INTEGER = 3
	barbers_num: INTEGER = 3
	haircuts: INTEGER = 1
	sofa_size: INTEGER = 3
	waiting_room_size: INTEGER = 5
end
