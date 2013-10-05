class MegaGreeter
	attr_accessor :names

	#Create the object
	def initialize(names = "World")
		@names = names
	end

	#Say hi to verybody
	def say_hi
			if @names.nil?
				puts "..."
			elsif @names.respond_to?("each")
				#if @names is a list of some kind, iterate!
				@names.each do |name|
					puts "Hello #{name}!"
				end
			else
				puts "Hello #{@names}!"
			end
		end

			#Say bye to everybody
			def say_bye
				if @names.nil?
					puts "..."
				elsif @names.respond_to?("join")
					#Join th elist elements with commas
					puts "Goodbye #{@names.join(", ")}. Come back soon!"
				else
					puts "Goodbye #{@names}. Come back soon!"
				end
			end

		end

		if __FILE__ == $0
			mg = MegaGreeter.new
			mg.say_hi
			mg.say_bye

			#Change name to be "Zeke"
			mg.names ="Zeke"
			mg.say_hi
			mg.say_bye

			#Change name ot an array
			mg.names = ["Albert", "Brenda", "Charles", "Dave", "Englebert"]
			mg.say_hi
			mg.say_bye

			#change to nil
			mg.names = nil
			mg.say_hi
			mg.say_bye

		end