class
	SHOP

create
	make

feature
	
	max_size: INTEGER
	current_size: INTEGER
	open: BOOLEAN

feature {APPLICATION}
	make (a_size: INTEGER)
		do
			max_size := a_size
			current_size := 0
			open := False
		end

feature 
	
	open_shop
		do
			open := True
		end

	has_room: BOOLEAN
		do
			Result := max_size - current_size > 0
		end

	enter
		do
			current_size := current_size + 1
		ensure	
			current_size = old current_size + 1
		end

	leave
		do
			current_size := current_size - 1
		ensure	
			current_size = old current_size - 1
		end

	empty: BOOLEAN
		do
			Result := current_size = 0
		end

end
