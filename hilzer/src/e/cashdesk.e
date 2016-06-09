class
	CASHDESK	

inherit
  FIFO_QUEUE

create
	make

feature

	make (a_size: INTEGER)
	  require
	  	max_size: a_size > 0
		do 
			size := a_size
		end

feature 

	checkout (b: separate BARBER; c: separate CUSTOMER)
		do
			print ("Customer "+ c.id.out +" is paying Barber " +b.id.out+"%N")
			(create {EXECUTION_ENVIRONMENT}).sleep ({INTEGER_64} 10_000_000)
		end

	use
		do
			waiting := waiting + 1
		end
	finish
		do
			waiting := waiting - 1
		end
end
