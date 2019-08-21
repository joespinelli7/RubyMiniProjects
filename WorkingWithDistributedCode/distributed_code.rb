# load: When you load a file, it is loaded as many times as you load it (inefficient). Use require
#   When you use the load keyword to load a file, you need to provide the complete filename otherwise you will receive
#   a cannot load such file error.
#   Example:
#   load './example_file.rb'
#   ExampleClass.new.run_method



# require: When you use require to load a file, it is loaded only once into memory irrespective of how many times you require it.
#   Example:
#   require './example_file.rb'
#   ExampleClass.new.run_method



# Mix-in: modularized code that can be merged into your classes.
# all examples are in different files. Suppose writing animal kingdown program in which all classes have
# same method name and action associated with it.
# file: cat.rb
class Cat
  def eat
    puts "I am chewing!"
  end
end

# file: dog.rb
class Dog
  def eat
    puts "I am chewing!"
  end
end

# file: human.rb
class Human
  def eat
    puts "I am chewing!"
  end
end

# Solve this repitive code:
# file: basic_functions.rb
module BasicFunctions
  def eat
    puts "I am chewing!"
  end

  def drink
    puts "Slurp! Slurp! Slurp!"
  end

  def sleep
    puts "Zzzzzzzzzzzzzzzzz!"
  end
end



#include: to add external code into your classes, the methods you define in your module are added
#   as INSTANCE METHODS to your class.

# file: cat.rb
require './basic_functions'

class Cat
  include BasicFunctions
end

# file: dog.rb
require './basic_functions'

Class Dog
  include BasicFunctions
end

# file: human.rb
require './basic_functions'

Class Human
  include BasicFunctions
end

#   create object instances and require module file to use modularized code.
#   Example:
require './cat'

cat = Cat.new
cat.eat
cat.drink
cat.sleep



#extend: works like the include keyword, the only difference is the methods are added as
#   CLASS METHODS to your class.

require './basic_functions'

class Cat
  extend BasicFunctions
end

Class Dog
  extend BasicFunctions
end

Class Human
  extend BasicFunctions
end

#   Since eat, drink, and sleep are now class methods, we do not need object instances anymore.
#   Example:
require './cat
require './dog'
require './human'

Cat.eat
Dog.drink
Human.sleep
