class Paperboy

	attr_reader :name, :experience, :earnings

	def initialize(name)
		@name = name
		@experience = 0
		@earnings = 0

	end

	def quota
		
			return (experience/2) + 50
	end

	def deliver(start_address, end_address)
		
		num_of_houses = end_address-start_address

		if quota < num_of_houses 
		earnings = ((num_of_houses-quota)*0.50) + (quota * 0.25)

		elsif quota > num_of_houses
			earnings = ((num_of_houses*0.25) - 2)

		else
			earnings = num_of_houses*0.25


		end
		@earnings += earnings
		@experience += num_of_houses 
	end

	def report
		return "#{name.upcase} has delivered #{@experience} papers and has earned $#{@earnings}."
	end
end



tom = Paperboy.new('Tom')

tom.deliver(23,150)

puts tom.report


