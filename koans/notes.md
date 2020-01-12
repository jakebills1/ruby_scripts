* truthy v falsey
  * false: false and nil
  * true: everything else
* exceptions
  * begin-rescue blocks will execute the code in the rescue block only if an error is raised in the begin
  * raise and fail mean the same thing and can be prepended with an error message
  * code in an ensure block will run whether or not an error occured
* iteration methods on collections
  * map and collect called on an array both return an array of items with the code block performed on them 
  * select/find_all runs a code block and returns an array of items that pass the condition in the block
  * find returns the first item passing the test
  * inject takes an initial value as an argument, and runs a code block on each item in a collection, using both the value of the item and the initial value acting as an accumulator and returns the result of that operation
* blocks
  * yield: a method with yield in it can be passed a block of code that will be run when the method is called
    * this can be made optional with the block_given? method
    * methods with yield can also be passed a block in the form of a lambda method stored in a a variable
* file i/o
  * open, when called on a file path, loads the file into memeory
  * gets returns a line from the file
  * you can iterate through the file in a while loop by doing `while file.gets do ... end`
  * the last line of the file can be found by matching /e/
* score project spec
  * given an arr of up to five ints b/w 1 and 6
  * a set of three ones is worth 1000 points
  * a set of three of the same number, except ones, are worth 100 * the value of the number
  * a one not of a set of three is worth 100 points
  * a five not part of a set of three is worth 50 points
  * anything else is worth 0 points
  * method
    * if roll is empty
      * return zero
    * if roll count is three or less
      * sort roll
      * check is the three are the same
        * return 1000, if they are ones, or 100 * the number 
      * if not, iterate through the list, looking for 1s or 5s, summing 100 or 50, respectively
        * if no 1s or 5s return 0
    * if roll is four or five dice
      * sort roll
      * check for triplets
        * sum score
      * if no triplets check for 1s and 5s
        * sum score
      * if no triplets or 1s and 5s return zero
    * or
      * iterate through the array, sum the count of each dig from 1 to six
    * or
      * iterate over arr, incrementing score by 100 or 50 for 1s and 5s
      * if score == 300
        * a triplet of 1 must have been found; increase score by 700
      * if score == 150
        * a triplet of 5 must have been found; increase score by 350 
    * or
      * there will only ever be one triple in a set
      * once triple is found, those digits should be extracted from the set, then the individual values can be summed, if they are 1s or 5s
* classes
  * accessor methods in the form of attr_reader methods are used to access instyance variables outside the class
  * attr_accessor is a both a getter and a setter method for instance variables
    * doing `attr_accessor :name` will give the class a .name method which first act as an initializer, then an accessor
  * self: when used in a class definition, refers to the contining object
  * classes can be reopened at any point to add mthods
    * built in classes can be added to in this way
  * :: is used to access a constant, module, or class defined in another class or module. purpose is namespace resolution
  * inheritance: 
    * the super keyword is used to invoke parent behavior
      * when used in a method inherited from a parent, ie with the same name, it refers to the behavior of the parent method, so it can be added on to. super essentially calls the method and super is a standin for the return value
* Module:
  * class methods override module methods
* scope within classes
  * Global Scopes can be accessed using the :: prefix like `::String`
* class methods
  * classes, which are just objects, have many built in methods
  * a singleton method is one defined outside the class defintion on an instance of the class, or the class itself
    * other instances of that same object will not have that method, unless the method was defined on the class  
  * self is a class object inside of the class
  * from an instance of a class, you can access class methods by `<instance>.class.<class_method>`
* messages
  * `<Object>.<message>` where the message is an method that can be called on the object
    * `.respond_to?` can be used to see if an object resonds to a methods
  * messages can be called using dot notation or using the send method, `Object.send(:method)`
    * `.__send__(:message)` also works 
      * the double underscore is to avoid overriding special methods
    * the send methods can be used with arguments like `Object.send(:message, arg1, arg2, ...)`
  