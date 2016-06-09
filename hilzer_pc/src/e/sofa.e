class
	SOFA

create
	make

feature 
	make (a_size: INTEGER) 
		require
			a_size > 0
		do
			create customers.make (a_size)
			size := a_size
			waiting := 0
		end
	customers:  BOUNDED_QUEUE [ separate CUSTOMER ]

feature {BARBER}

	stand_up: separate CUSTOMER
		require 
			not_empty: not empty
		local
			c: separate CUSTOMER
		do
			c := customers.item
			customers.remove
			waiting := waiting - 1	
			Result := c
		ensure
			waiting = old waiting - 1
		end

feature {CUSTOMER}
	sit_down (c: separate CUSTOMER)
		do
			waiting := waiting + 1
			customers.put (c)
		ensure
			waiting = old waiting + 1
		end


feature
	-- Access

	size, waiting : INTEGER

	has_room : BOOLEAN
		do
			Result := size - waiting > 0
		end

	empty: BOOLEAN
		do
			Result := waiting = 0
		end

end