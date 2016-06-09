class
	WAITING_ROOM

create
	make

feature

	make (a_shop_size: INTEGER)
		require
			valid_shop_size: a_shop_size > 0
		do
			shop_size := a_shop_size
			waiting_customers := 0
			open := False
		end

feature

	open: BOOLEAN
	shop_size: INTEGER
	waiting_customers: INTEGER

feature {APPLICATION}
	-- query 
	open_shop
		require
			closed: not open
		do
			open := True
		ensure
			opened: open = not old open
	end

feature {CUSTOMER}
	has_room: BOOLEAN
		do
			Result := (shop_size - waiting_customers) > 0
		end

	enter
		require
			is_open: open
			has_room : has_room
		do
			waiting_customers := waiting_customers + 1
		ensure 
			waiting_customers = old waiting_customers + 1
		end

	leave
		require
			is_open: open
			non_empty: waiting_customers > 0
		do
			waiting_customers := waiting_customers - 1
		ensure 
			waiting_customers = old waiting_customers - 1
		end

end