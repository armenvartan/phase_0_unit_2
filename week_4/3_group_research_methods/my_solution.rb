# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  wanted_items = [] #empty array for found items
  new_source = source.map {|item| item.to_s} #convert array elements to strings
  new_source.each do |item| #iterate through array and find items which include thing_to_find
    if (item.include?(thing_to_find) ==  true)
      wanted_items << item #if found, push to array
    end
  end
  return wanted_items
end

def my_hash_finding_method(source, thing_to_find)
  wanted_value = [] # empty array for found values
  source.each do |key, value| #iterate through key,value of hash
    if (value == thing_to_find)
      wanted_value << key #push if found
    end
  end
  return wanted_value
end

# Identify and describe the ruby method you implemented.
#
#
#

# Person 2

def my_array_modification_method(source, thing_to_modify)
  source.map! do |i|
    if i.is_a? Integer
      i += thing_to_modify
    else
      i
    end
  end
  return source
end

def my_hash_modification_method(source, thing_to_modify)
  source.each{ |k,v| source[k] = v + thing_to_modify }
end


# Identify and describe the ruby method you implemented.
#
#
#

#
# # Person 3
def my_array_sorting_method(source)
  source.sort_by { |a| a.to_s }
end

def my_hash_sorting_method(source)
  source.sort_by { |name, age| age }
end

# Identify and describe the ruby method you implemented.
#
# #
# #
#
#
# # Person 4
def my_array_deletion_method(source, thing_to_delete)
  #Your code here!
end

def my_hash_deletion_method(source, thing_to_delete)
  #Your code here!
end

# Identify and describe the ruby method you implemented.
#
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods.
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
#
#
#
#
#
