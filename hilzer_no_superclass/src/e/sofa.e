class
	SOFA

create
	make

feature
	size : INTEGER 
	waiting : INTEGER
	current_ticket : INTEGER
	make (a_size :INTEGER)
		do
			size := a_size
			waiting := 0
			current_ticket := -1
		end

feature

	has_room: BOOLEAN 
		do	
			Result := size - waiting > 0
		end

	is_empty: BOOLEAN
		do
			Result := waiting = 0
		end

	sit_down: INTEGER
		require
			max_size: size - waiting > 0 
		do
			waiting := waiting + 1
			current_ticket := current_ticket + 1
			Result := current_ticket
		ensure
			new_size: waiting = old waiting + 1
		end

	stand_up
		require
			not_empty: waiting > 0 
		do
			waiting := waiting - 1
		ensure
			new_size: waiting = old waiting - 1
		end

end