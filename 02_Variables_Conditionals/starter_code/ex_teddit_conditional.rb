# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets
end

def calculate_upvotes(story, category)
	
	

	# Write code so that:
		# If the Story is about cats multiply the upvotes by 5
		# If the Story is about bacon multiply the upvotes by 8
		# If the Story is about Food it gets 3 times the upvotes.

	#For example:
	# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!

	upvotes = 0;

	topic_array = [["cats",5], ["bacon",8], ["food",3]]

	topic_array.each do |(x, y)|
		x.downcase
		story.downcase
		category.downcase

		if (story.include? x) || (category.include? x )
			if upvotes == 0
				upvotes = 1
			end
	   		upvotes *=  y 
		end
	end
	upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}Category: #{category.capitalize}Current Upvotes: #{upvotes}"