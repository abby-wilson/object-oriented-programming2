# CLASS
# class Person
# end
#
# # CREATING THE OBJECTS (INSTANCES) OF A CLASS
# jim = Person.new
# shelly = Person.new
#
# # EXAMPLE OF INSTANCE METHOD
# class Person #Creating the class
#   def hello #Instance method name
#     puts "Hello Ruby" #Method output
#   end
# end

# Local Variables - defined within a method
#                 - not available outside the method
#                 - begin with a lowercase letter or _ e.g. (names_and_ages)

# Instance Variables - available across methods within a class for an object
#                    - DIFFERENT FROM OBJECT TO OBJECT
#                    - preceded by @ followed by the variable name

# # READERS AND WRITERS
# class Person #Creating the class
#   def name #Creating the method and method name
#     @name #Instance variable
#   end
#
#   def name=(name) # Creating the Instance Method
#     @name = name # Defining the Instance Variable within the
#   end
# end
#
# person = Person.new #Creating the object
# person.name = "Abby" #Defining the object
# puts person.name #Printing output



class BankAccount
  def initialize(balance, interest_rate = 1.07)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(foo)
    @balance += foo
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance * @interest_rate
  end

  def print_balance
    puts "The balance is #{@balance}"
  end

end

my_bankaccount = BankAccount.new(400, 1.09)
my_bankaccount.print_balance
my_bankaccount.deposit(200)
my_bankaccount.print_balance
my_bankaccount.gain_interest
my_bankaccount.print_balance
