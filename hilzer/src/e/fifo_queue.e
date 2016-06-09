deferred class
	FIFO_QUEUE

feature
	size : INTEGER 
	waiting : INTEGER

feature
	has_room: BOOLEAN 
		do	
			Result := size - waiting > 0
		end

	empty: BOOLEAN
		do
			Result := waiting = 0
		end
end