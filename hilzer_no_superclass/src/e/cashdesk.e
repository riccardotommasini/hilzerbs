class
	CASHDESK	

create
	make

feature

	size : INTEGER
	waiting : INTEGER

	make (a_size: INTEGER)
		do 
			size := a_size
		end

feature 

	checkout (b: separate BARBER; c: separate CUSTOMER)
		do
			print ("Customer "+ c.id.out +" is paying Barber " +b.id.out+"%N")
			(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
		end
	has_room: BOOLEAN 
		do	
			Result := size - waiting > 0
		end

	is_empty: BOOLEAN
		do
			Result := waiting = 0
		end

	use
		do
			waiting := waiting + 1
		end
	finish
		do
			waiting := waiting - 1
		end
end
