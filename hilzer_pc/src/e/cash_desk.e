class
	CASH_DESK

create
	make

feature 
	make
		do
			create customers.make (1)
			size := 1
			waiting := 0
		end

	customers:  BOUNDED_QUEUE [ separate CUSTOMER ]


feature {BARBER}

	checkout: separate CUSTOMER
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

	pay (c: separate CUSTOMER)
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
			Result:= waiting = 0
		end
end