class
	SOFA

inherit
  FIFO_QUEUE

create
	make

feature

	make (a_size :INTEGER)
		require
			new_size: a_size > 0
		do
			size := a_size
			waiting := 0
		end

feature

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