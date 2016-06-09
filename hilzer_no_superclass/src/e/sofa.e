class
	SOFA

create
	make

feature
	size : INTEGER 
	waiting : INTEGER

	make (a_size :INTEGER)
		do
			size := a_size
			waiting := 0
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

	sit_down
		require
			max_size: size - waiting > 0 
		do
			waiting := waiting + 1
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