note
	description	: "Objects that describe a barbershop"
	author		: "Marco Balduini and Riccardo Tommasini"
	date		: "2016/06/12"
	reviewer	: "Bertrand Meyer"
	revision	: "0.1"

class
	APPLICATION

inherit
  ARGUMENTS

create
	make

feature
	make
		local
			customer: separate CUSTOMER
			barber : separate BARBER
			
			barbers : separate BARBER_LIST
			cash_desk: separate CASHDESK
			sofa: separate SOFA
			shop: separate BARBERSHOP
		do
			
			create cash_desk.make (cash_deks_num)
			create barbers.make (barbers_num)
			create sofa.make (sofa_size)
			create shop.make (waiting_room_size)

			across (1 |..| barbers_num) as ib loop
				print("Creating barber "+ ib.item.out +"%N")
				create barber.make (ib.item)
				separate barbers as c do
					c.sit (barber)
				end
			end

			across (1 |..| customer_num) as ic loop
				print("Creating customer "+ ic.item.out +"%N")
				create customer.make (ic.item, haircuts, shop, sofa, barbers, cash_desk)
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
	customer_num: INTEGER = 5
	barbers_num: INTEGER = 3
	haircuts: INTEGER = 1
	sofa_size: INTEGER = 2
	waiting_room_size: INTEGER = 3
end
