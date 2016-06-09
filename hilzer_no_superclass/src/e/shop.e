class
	SHOP

create
	make

feature
	size : INTEGER 
	waiting : INTEGER
	in_shop: INTEGER

	open : BOOLEAN
	make (a_size :INTEGER)
		require
			initial_size: a_size > 0
		do
			size := a_size
			waiting := 0
			in_shop := 0
			open := False
		end

feature
	has_room: BOOLEAN 
		do	
			Result := size - waiting > 0
		end

	empty: BOOLEAN
		do
			Result := in_shop = 0
		end

	enter
    require
      max_size: size - waiting > 0
    do
      waiting := waiting + 1
      in_shop := in_shop + 1
    ensure
      waiting_size: waiting = old waiting + 1
      new_size: in_shop = old in_shop + 1
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
      in_shop_ne: in_shop > 0
    do
      in_shop := in_shop - 1
    ensure
      new_size: in_shop = old in_shop - 1
    end

	open_shop
		do
			open := True
		end
end