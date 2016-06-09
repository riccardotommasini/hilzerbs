class
	SOFA

create
	make

feature
	size : INTEGER 
	waiting : INTEGER
	current_ticket : INTEGER
	
	next_ticket: INTEGER
	allowed_tickets: ARRAY[INTEGER]

	make (a_size :INTEGER)
		local 
			i : INTEGER
		do
			size := a_size
			waiting := 0
			
			current_ticket := -1
			next_ticket := a_size
			
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

	allowed(customer_ticket : INTEGER): BOOLEAN
		do
			print ("UPDATE SOFA TICKET "+allowed_tickets.item(0).out+"%N")
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
				i = size

			loop
				 if allowed_tickets.item (i) = customer_ticket then
				 	index := i
				 end

				 i := i + 1
			end
			
			allowed_tickets.put(next_ticket, index)
			next_ticket := next_ticket + 1
		end

end