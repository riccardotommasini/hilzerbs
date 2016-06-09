class
	APPLICATION

create
	make

feature
	make
		local
			customer: separate CUSTOMER
			barber : separate BARBER
			
			chair : separate CHAIR
			cash_desk: separate CASHDESK
			sofa: separate SOFA
			shop: separate SHOP
		do
			
			create cash_desk.make (cash_deks_num)
			create chair.make (barbers_num)
			create sofa.make (sofa_size)
			create shop.make (waiting_room_size)

			across (1 |..| barbers_num) as ib loop
				print("Creating barber "+ ib.item.out +"%N")
				create barber.make (ib.item)
				separate chair as c do
					c.sit (barber)
				end
			end

			across (1 |..| customer_num) as ic loop
				print("Creating customer "+ ic.item.out +"%N")
				create customer.make (ic.item, haircuts, shop, sofa, chair, cash_desk)
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
	cash_deks_num: INTEGER = 1
	customer_num: INTEGER = 50
	barbers_num: INTEGER = 3
	haircuts: INTEGER = 2
	sofa_size: INTEGER = 20
	waiting_room_size: INTEGER = 100
end
