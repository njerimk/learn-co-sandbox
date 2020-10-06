new_hash ={ #Implicit or "Hash literal"form. '{'=> hash
  :created => Time.now,
  :message => "Hello world!"
} #=>

puts new_hash

#in irb no need to add spaces or "=>" just type hashes as is on one line

#To create a new hash
second_hash=Hash.new
puts second_hash #=> {} or 
second_hash ={}
puts second_hash

#To access hashes we use the [key] (similar to how we access indexes in an array)
pets ={
  "cat" => "Maru", #=> these are keys made up of strings 
  "dog" => "Pluto"
}

puts pets["cat"] #=> "Maru" , using '[]'=> "bracket notation"

#Keys can be Symbols instead of strings 
meals = {
  :breakfast => "cereal",
  :lunch => "peanut butter and jelly sandwich",
  :dinner => "mushroom risotto" 
}

puts meals [:lunch]

#Keys can also be Integers 

healthy_things ={
  1 => "learn to garden",
  2 => "plant seeds",
  10 => "eat vegetables"
}

puts healthy_things[10]

#Keys can also be variables (different from strings since there are no "" or '')

user_info={
  :name => "Ada",
  :email => "ada.lovelace@famous_computer_inventors.com"
}

puts user_info[:email]


#When no Key is found there will be a nil (no value) response. Here is how to handle it.

grocery_items={
  :apples => 10,
  :pears => 4,
  :peaches => 2,
  :plums => 13
}

puts grocery_items
puts grocery_items[:rambutans] #=> nil or no value response which = falsy
#any data type value = truthy (even empty arrays and hashes)

#We can use the fact that nil = falsy else (truthy) to create conditional statements
grocery_items ={
  :apples => 10,
  :pears => 4,
  :peaches => 2,
  :plums => 13
}

if grocery_items[:rambutan]
  puts "Rambutan present!"
else
  puts "No rambutan."
end

#Fetch is a Hash method that will look up a key and will let you specify
#what to return if the key is not found.

#Hash_name.fetch("key","return if key is not found")
puts grocery_items.fetch("rambutan", "Please try again!")


#Symbols are the most ideal to use as keys in our hashes.
:i_am_a_symbol #=> a symbol, ruby allocates some memory to this piece of data. 

#object_id is a method built into all core data types. 
#We can see how ruby refers back to the symbol :i_am_symbol. By using object_id

puts :i_am_a_symbol.object_id #=> 1525788 (we will get the same integer back when we call this Symbols

#Using object_id on a string returns different integers, strings take up separate allocations of memory

#Symbols cannot be changes (immutable), they are unique

dog_one ={
  :name => "Luca",
  :breed => "German Shepherd"
}

dog_two = {
  :name => "Lola",
  :breed => "Giant Schnauzer"
}

#Symbols here (:name, :breed) only take up the same allocation in memory (:name) => one allocation, (:breed => another allocation) even when used in different hashes. This is why they are more preferred than strings, which take up more memory

#Modifying and Adding values to existing hashes
#Update Hash Values #=> very similar to looking them up
person = {
  name: "Sam",
  age: 31
}

puts person
puts person[:age]
puts person[:age] = 32 #=> how to update the value 

puts person #=> now has an output age of 32

#Add keys and values to a Hash
#Note= adding keys and values not included in a hash 
#returns a nil value (falsy)
puts person[:hometown] #=> blank or nil value (falsy)

#What happens when we use the bracket equals method for a nil value and key?
puts person[:hometown]="Brooklyn, NY"#=> it updates thi to the person hash, so you can now look up the key to see its value
puts person

#The set up is#=> hash[:new_key]= "New Value"

#To find a value or crete a value:

shipping_manifest ={
  "whale bone corset" => 5,
  "porcelain vase" => 2,
  "oil painting" => 3,
  "silverware"=> 34,
  "loom" => 1
}

#To add a fourth oil painting to the list:
puts shipping_manifest["oil painting"]=4
puts shipping_manifest

#A faster way to increment an integer value without knowing the previous value: 

puts shipping_manifest["oil painting"] + 1 #=> this will update the "oil painting" to 5 separately, but when you call shipping_manifest:

puts shipping_manifest #=> it will still show the "oil painting" = 4 (the prior value) so you have to update what the hash/key's assigned variable is using the assignment operator as shown below:

puts shipping_manifest["oil painting"] = shipping_manifest["oil painting"] + 1 
puts shipping_manifest #=> the shipping_manifest "oil painting" key's value will show up with the updated +1 value now

#We can make this even shorter using +=1:
# puts shipping_manifest["oil painting"] += 1

#To add a new key/item to the shipping_manifest
#puts shipping_manifest["top hat"] += 1 #=> this returns an error or nil value. This is because "top hat" returns a nil value since the key does not exist and you can not add nil to an integer. 

#To add a new key/item to the hashes, you can use an if statement

if shipping_manifest["top hat"] #=> truthy then
  shipping_manifest ["top hat"] += 1 #=> increment shipping_manifest by 1
else #if shipping manifest is NOT truthy (it is not because it is nil)
  puts shipping_manifest["top hat"] = 1 #=> assign a vallue of 1
end

puts shipping_manifest["top hat"]
puts shipping_manifest