note
	description	: "Objects that describe a waiting room"
	author		: "Marco Balduini and Riccardo Tommasini"
	date		: "2016/06/12"
	reviewer	: "Bertrand Meyer"
	revision	: "0.1"

class
	ROOM

create
	make

feature
	size : INTEGER 
	waiting : INTEGER
	in_room: INTEGER
	
	current_ticket: INTEGER 

	open : BOOLEAN
	make (a_size :INTEGER)
		require
			initial_size: a_size > 0
		do
			size := a_size
			waiting := 0
			in_room := 0
			open := False
			current_ticket := -1
		end

feature
	has_room: BOOLEAN 
		do	
			Result := size - waiting > 0
		end

	empty: BOOLEAN
		do
			Result := in_room = 0
		end

	enter: INTEGER
	    require
	      max_size: size - waiting > 0
	    do
	      waiting := waiting + 1
	      in_room := in_room + 1
	      current_ticket := current_ticket + 1
	      Result := current_ticket
	    ensure
	      waiting_size: waiting = old waiting + 1
	      new_size: in_room = old in_room + 1
    	end

	leave_room
    require
      waiting_ne: waiting > 0
    do
      waiting := waiting - 1
    ensure
      waiting_size: waiting = old waiting - 1
    end

  leave
    require
      in_room_ne: in_room > 0
    do
      in_room := in_room - 1
    ensure
      new_size: in_room = old in_room - 1
    end

	open_room
		do
			open := True
		end
end