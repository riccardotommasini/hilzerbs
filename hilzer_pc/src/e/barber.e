class
	BARBER

create
	make

feature
	id: INTEGER
	sofa : separate SOFA
	cash_desk: separate CASH_DESK
	shop: separate SHOP

	make (a_id: INTEGER; a_shop: separate SHOP; a_sofa: separate SOFA; a_cash_desk: separate CASH_DESK)
		do	
			id := a_id
			sofa := a_sofa
			cash_desk := a_cash_desk
			shop := a_shop
		end

feature {APPLICATION} 
	live
		do
			from
			until 
				True
			loop
				wait (shop)
				step
			end
		end


feature {NONE}

	wait (s: separate SHOP)
		require
			s.open
		do
		end

	step
		do
			if waiting_customer (sofa) then
				cut_hair(sofa)
			elseif paying_customer (cash_desk) then
				accept_payment (cash_desk)
			else
				print("Barber" + id.out +"has nothing to do and sleeps %N")
				(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000_000)
			end
		end

feature {NONE}
	waiting_customer (s: separate SOFA): BOOLEAN
		do
			Result := not s.empty
		end
	paying_customer (cd: separate CASH_DESK): BOOLEAN
		do
			Result := not cd.empty
		end

	
feature {NONE}

	cut_hair (s : separate SOFA)
		do
			separate s.stand_up as c
				do
					c.cut
					print("Barber " + id.out +"cutting hair of customer "+c.id.out+"%N")
					(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000_000)
				end
		end

	accept_payment(cd: separate CASH_DESK)
		do
			separate cd.checkout as c
				do
					c.pay
					print("Barber " + id.out +"checking out customer "+c.id.out+"%N")
					(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000_000)
				end
		end
end