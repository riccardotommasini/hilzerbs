note
	description	: "Objects that describe the behaviour of a barber"
	author		: "Marco Balduini and Riccardo Tommasini"
	date		: "2016/06/12"
	reviewer	: "Bertrand Meyer"
	revision	: "0.1"


class 
	BARBER

create	
	make

feature {NONE} -- Initialization

	make (a_id: INTEGER)
			-- Initialize with `a_id' as id
		require
			a_id > 0
		do
			id := a_id
		ensure
			id = a_id
		end

feature {CUSTOMER} -- Operations

	cut_hair (c: separate CUSTOMER)
		do
			print ("Barber "+id.out+ " is cutting Customer "+ c.id.out +" s hairs.%N")			
			(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
		end

	accept_payment (c: separate CUSTOMER)
		do
			print ("Customer "+ c.id.out +" is paying Barber " + id.out +	"%N")
			(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
		end
 
feature -- Implementation

	id: INTEGER -- Unique Id

invariant
	valid_id: id > 0
end