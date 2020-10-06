#Describe nested hashes and how they store data
  
  #-multidimensional hash => example is a key in a hash that points to a value that is also a collection of objects (array or another hash)
  
  #-multidimentional hashes => can be found when you're working on a large collection of info (Application Program Interface)


#Describe the structure of a nested hash


#Give examples of real-world situations that can require nested hashes.
  

  #-An example is a list of instructors at a school stored in an array
    
    instructors = ["Ian", "Johann", "Alex"] 
    #-if we expand the collection to include students:
    
    students = ["Andrew", "Howard", "Terrance","Daniel", "Rachel", "Natalie"]
    
  #- both indtructors and students are associated with the same school. so let's create a has #=> school which will contain keys to denorte the instructors and students categories (a nested hash):
  
    school ={
      instructors:["Ian", "Johann", "Alex"],
      students: ["Andrew", "Howard", "Terrance", "Daniel", "Rachel", "Natalie"]
    }
    
    #**Hashes and strings can contain several types of data at once
    
#Retrieve data from a nested hash.
    #To retrieve the value from the key we do as usual:
    puts instructors = school[:instructors] #=> ["Ian","Johann", "Alex"]
    #To retrieve the string from the array from the value we use the same method for accessing the array index
    puts instructors[0] #=> "Ian"
    
  #Alternatively we could combine these to 2 sets of brackets
    puts school[:instructors][0] #=> "Ian"
    
#Nesting a Hash within a Hash
    #We're putting together info on:
      #Various tv show characters
      #information about each particular character
    tv_show_characters{ 
        homer ={
          name: "Homer Simpson",
          occupation: "Nuclear Safety Inspector",
          hobbies: ["Watching TV", "Eating donuts"]
        }
        
        jon = {
          name: "Jon Snow",
          occupation: "King in the North",
          hobbies: ["Fighting white walkers", "Know nothing"]
            }
            
        fred = {
          name: "MR. Rogers",
          occupation: "Neighbor",
          hobbies:["Making children feel loved and appreciated", "Singing songs"]
        }
      }
        #To compile these it is better to put the characters into hashes (putting them into further arrays would make this harder to look up (you would need an index number))
        # We can use the character names as keys to make it more convenient to access our hashes
       puts tv_show_characters[homer:]


