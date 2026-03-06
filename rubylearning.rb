# Prints the output without adding a new line at the end.
print"Hello Wolrd"
print "Welcome to Ruby programming"

# Prints the output and automatically adds a new line after it.
puts "My name is Ali"
puts "I am learning Ruby"

# Variables in Ruby
character_name = "Ali"
character_age = 25

puts "There once was a  man named #{character_name},"
puts "he was #{character_age} years old."

# You can change the value of a variable by reassigning it.
character_name = "Ahmed"
character_age = 30
puts "He really liked the name #{character_name},"
puts "but didn't like being #{character_age}."

# Data types in Ruby
name = "Ali" # String
age = 25 # Integer
height = 5.9 # Float
is_student = true # Boolean
nil_value = nil # nil

puts "Name: #{name}"
puts "Age: #{age}"
puts "Height: #{height}"
puts "Is student: #{is_student}"
puts "Nil value: #{nil_value}"

# Working with strings (most common data type in Ruby)
puts "Hey there!\" I'm learning Ruby programming." # Using /" to add double quot in single string.
puts "This is a \n new line." #Using \n to add a new line in single string.
puts "This is a \t tab space." # Using \t to add a tab space in single string.

# String concatenation
first_name = "Mohammadali"
last_name = "Ali"

full_name = first_name + " " + last_name
puts "Full name: #{full_name}"

# String interpolation
puts "My name is #{full_name} and I am #{age} years old."

# Gettign User Input
# puts "Enter your name:"

# user_name = gets.chomp # gets method is used to get user input and chomp method is used to remove the new line character from the end of the input.
# puts "Hello, #{user_name}! Welcome to Ruby programming."

# Basic arithmetic operations
num1 = 10
num2 = 5
puts "Addition: #{num1 + num2}"
puts "Subtraction: #{num1 - num2}"
puts "Multiplication: #{num1 * num2}"
puts "Division: #{num1 / num2}"
puts "Modulus: #{num1 % num2}"

# Exponentiation
puts "Exponentiation: #{num1 ** num2}"

# Order of operations
puts "Order of operations: #{num1 + num2 * 2}" # Multiplication is performed before addition.
puts "Order of operations with parentheses: #{(num1 + num2) * 2}" # Parentheses change the order of operations.

# Methods in Ruby
def greet(name)
    return "Hello, #{name}! Welcome to Ruby programming."
end

puts greet("Ali")

# Methods with multiple parameters
def add(num1, num2)
    return num1 + num2
end

puts "The sum of #{num1} and #{num2} is: #{add(num1, num2)}"


def sub(num1, num2)
    return num1 - num2
end

puts "The difference of #{num1} and #{num2} is: #{sub(num1, num2)}"