class 
	BARBER

create	
	make

feature
	id: INTEGER

	make (a_id: INTEGER)
		do
			id := a_id
		end

feature
	cut_hair (c: separate CUSTOMER)
		do
			print ("Barber "+id.out+ " is cutting Customer "+ c.id.out +" s hairs.%N")			
			(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
		end
end