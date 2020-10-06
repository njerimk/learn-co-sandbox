#Insight => conclusions drawn from the raw data
#Array of Arrays (AoA)
#Array of Hashes (AoH)
#Hash of Arrays (HoA)
#Hash of Hashes (HoH)

#Displaying Nested Structure

#To modify each element in an array (ex: perform a math operation :
    #array =[100, 300, 50, 450]
    #count = 0

    #while count < array.length do
      #array[count] = array[count] * array[count]
      #count += 1
   # end 

#array #=> [10000, 90000,2500,202500]

#This code alters each element in the orignial array, replacing each value with the square of itself

#To NOT modify the orignial array we can collect the result of each operation in a new array:
 # array = [100, 300,50, 450]
  results_array =[] #=> we create a new array with a new variable name in order to store the results 
 # count = 0
  
 # while count < array.length do
   # results_array << array[count] * array[count] #=> here we add the array computation results to the results array using '<<'
  #  count += 1
 # end
  
#  puts results_array #=>[10000, 90000,2500,202500]
#  puts array #=> [100,300,50,450]

# To derive a single value from an array of elements, we modify a variable on each loop rather than adding to a new collection.

#Looping through Nested arrays
  array_of_arrays = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
    ]
#puts array_of_arrays[0]


#If we end up with more than 3 elements in an array we can use a loop to not worry about having to change our code in order to retrieve our elements in our nested arrays 
 # count =0
  
#  while count < array_of_arrays.length do
  #  p array_of_arrays[count]
   #   count += 1
#  end
 
 #with this loop we can access each of the nested array. To make it better we could create a hybrid between looping and directly accessing values:
 
#  count = 0
  
  #while count < array_of_arrays.length do
   # p array_of_arrays[count][0] #[1,2,3] one element at a time 
 #   p array_of_arrays[count][1] # [4,5,6]
    #[7,8,9]
 #   p array_of_arrays[count][2] #[7,8,9]
  #  count += 1
 # end 
  
#To make this easier for us so that we don't have to put the element's row index number we can make these additional changes to the while loop

count = 0
 
while count < array_of_arrays.length do
  p array_of_arrays[count]
 
  inner_count = 0
  while inner_count < array_of_arrays[count].length do
    p array_of_arrays[count][inner_count]
    inner_count += 1
  end
 
  count += 1
end

#Mapping Nested Arrays
#Here we will collect all the values of each nested array into a SINGLE array
    array_of_arrays = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
  
      ]
      
    #1.We create a variable results_array
    #2. Then we build 2 while loops again
    #3. Instead of outputting each element we'll push it into results_array
    
    count = 0
    results_array =[]
    
    while count < array_of_arrays.length do
      inner_count =0
      
    while inner_count < array_of_arrays[count].length do
      results_array << array_of_arrays[count][inner_count]
    end
      inner_count += 1
    
  results_array # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
  
#Reducing values in nested Arrays
  #1. This requires a variable to contain an accumulated result
 while count < array_of_arrays.length do
 
  inner_count = 0
  while inner_count < array_of_arrays[count].length do
    sum = sum + array_of_arrays[count][inner_count] # adds the element's value to sum and sets sum
    inner_count += 1
  end
 
  count += 1
end
 
sum
 # => 45


#Enumerable
  #a method provided by Ruby that:
    #1. "visits" every element or pair in a collecton and then...
    #2. Does some work with the element- calculate, modify, sum, compare, etc...
    # Enumerable either collects the collection of the new results or accumulates them and returns a single value
    
#Pseuodocode a Real-World Use of Enumerables 
    #Pseuodocode looks like code but we are not expecting it to run. It's just a way to express the solution of a program code & communicate to other programmers
    
    #Example:
      def is_anyone_vegetarian?
      (list_of_dietary_restrictions)
        #Given a collection of dietary restrictions (["lactose intolerant", "none", "allergic to peanuts", "vegetarian"])
        #If any of them are vegetarian
        #return 'true'; else, return 'false'
      end
      
    #If we were to encode this we would write tthe real code now within the method as such:
        def is_anyone_vegetarian?(list_of_dietary_restrictions)
          i = 0 # set up a i for the enumeration of the dietary restriction collection
          while i < list_of_dietary_restrictions.length do 
            # a loop for each dietary restriction
            #Stop enumerating and return true if any dietary restriction is # equal to 'vegetarian'
            if list_of_dietary_restrictions[i] == "vegetarian"
                return true
            end
            i += 1
          end
          return false
        end
      end
        
  is_anyone_vegetarian?(["vegetarian", "none", "paleo", "dietary", "none"]) #=> true
  is_anyone_vegetarian? (["none", "paleo", "dairy free", "none"]) #=> false
  is_anyone_vegetarian? (["foo", "bar", "bin", "bat"]) #=> false
        
        
          
          
          
