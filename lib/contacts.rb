require 'pry'

#  # This is the array we will be passing into the remove_strawberry method
#   contacts = {
#     "Jon Snow" => {
#       name: "Jon",
#       email: "jon_snow@thewall.we", 
#       favorite_icecream_flavors: ["chocolate", "vanilla"]
#     },
#     "Freddy Mercury" => {
#       name: "Freddy",
#       email: "freddy@mercury.com",
#       favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
#     }
#   }

=begin
def remove_strawberry(contacts)
	
	#contacts.each do | key, data |
	#	if data.include?(:favorite_icecream_flavors)
	#		data[:favorite_icecream_flavors].delete("strawberry")
	#	end
	#end
	

	contacts.each do | key, data |
		data.each do | nestedkey, nesteddata |
			if nestedkey == :favorite_icecream_flavors
				#nesteddata.delete("strawberry")
				nesteddata.delete_if{ |flav| flav == "strawberry" }
			end
		end
	end
end
=end

def remove_strawberry(contacts)
  contacts.each do |key, data|
    data.each do |nestedkey, nesteddata|
      if nestedkey == :favorite_ice_cream_flavors
        nesteddata.delete_if {|flav| flav == "strawberry"}
      end
    end
  end
end

   contacts = {
     "Jon Snow" => {
       name: "Jon",
       email: "jon_snow@thewall.we", 
       favorite_icecream_flavors: ["chocolate", "vanilla"]
     },
     "Freddy Mercury" => {
       name: "Freddy",
       email: "freddy@mercury.com",
       favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
     }
   }

puts remove_strawberry(contacts)
