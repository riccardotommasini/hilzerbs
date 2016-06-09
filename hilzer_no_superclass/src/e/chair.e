class
	CHAIR

create
	make

feature {NONE}
	
	barbers:  BOUNDED_QUEUE [ separate BARBER ]

	make (a_size: INTEGER)
		require
			size: a_size > 0
		local 
			i : INTEGER
		do
			max_size := a_size
			curr_size := 0
			create barbers.make (a_size)
			max_ticket := max_size
			
			create allowed_tickets.make_filled (0, 0, a_size)
				
			from
				i := 0
			until 
				i = a_size
			loop
				allowed_tickets.put(i,i)
				i := i + 1
			end
		end

feature

	max_size : INTEGER
	curr_size : INTEGER
	max_ticket: INTEGER
	allowed_tickets: ARRAY[INTEGER]
	
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

	allowed(customer_ticket : INTEGER): BOOLEAN
		do
			print ("UPDATED TICKETS "+allowed_tickets.item(0).out+"%N")
			Result := allowed_tickets.has (customer_ticket)
		end

	update(customer_ticket : INTEGER)
		local 
			i: INTEGER
			index: INTEGER
		do
			index := -1
			from 
				i := 0
			until 
				i = max_size
			loop
				 if allowed_tickets.item (i) = customer_ticket then
				 	index := i
				 end

				 i := i + 1
			end
			
			allowed_tickets.put(max_ticket, index)
			max_ticket := max_ticket + 1
		end

end