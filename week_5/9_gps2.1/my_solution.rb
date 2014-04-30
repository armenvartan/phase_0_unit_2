# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Emily Anderson

def bakery_num(num_of_people, fav_food)
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
  # Error if the fav_food input isn't sold at the bakery
  raise ArgumentError.new("You can't make that food") unless my_list.has_key?(fav_food)
  order_qty = num_of_people / my_list[fav_food] # the number of fav_food that you're going to make
  people_left = num_of_people % my_list[fav_food] # the number of people left to serve afterwards

  if people_left == 0 # in the case that everyone can have their favorite food
    return "You need to make #{order_qty} #{fav_food}(s)."
  else
    case fav_food #for all other cases
    when "pie" #when pie is your favorite food and there are leftover people to serve
      pie_qty = order_qty
      cake_qty = people_left / my_list["cake"] # this will be 0 if there are less than 6 people to serve
      cookie_qty = people_left % my_list["cake"] # all the leftovers will be served cookies. in the case that there are less than 6 poeple to start with, this still works
    when "cake" # there is no need to mention pies in this case
      cake_qty = order_qty
      cookie_qty = people_left
    when "cookie" #same logic as the "cake" case
      cookie_qty = order_qty
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end


#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working.
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)."
p bakery_num(24, "cakey")





# Our Refactored Solution
