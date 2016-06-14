class
	CHAIR

create
	make

feature {NONE}
	
	barbers:  BOUNDED_QUEUE [ separate BARBER ]

	make (a_size: INTEGER)
		require
			size: a_size > 0
		do
			max_size := a_size
			curr_size := 0
			create barbers.make (a_size)
		end

feature

	max_size : INTEGER
	curr_size : INTEGER
	
	has_room: BOOLEAN
		do
			Result := curr_size > 0
		end

	empty: BOOLEAN
		do
			Result:= curr_size = 0
		end


	head: separate BARBER
		require
			size: curr_size > 0
		local
			b: separate BARBER
		do
			b := barbers.item
			barbers.remove
			curr_size := curr_size - 1
			Result := b
		ensure
			new_size: curr_size = old curr_size - 1
		end

	sit (b: separate BARBER)
		require
			size: curr_size < max_size
		do
			barbers.put (b)
			curr_size := curr_size + 1
		ensure
			new_size: curr_size = old curr_size + 1
		end

end