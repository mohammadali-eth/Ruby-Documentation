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
puts "#{name.upcase} is in uppercase." # Using upcase method to convert string to uppercase.
puts "#{name.downcase} is in lowercase." # Using downcase method to convert string to lowercase.
puts "#{name.length} is the length of the string." # Using length method to get the length of the string.
puts "#{name.include?("Ali")} is the result of checking if the string includes 'Ali'." # Using include? method to check if the string includes a specific substring.
# puts "#{name.strape} is the string with the first letter of each word capitalized." # Using strape method to capitalize the first letter of each word in the string.
puts "#{name.reverse} is the string in reverse." # Using reverse method to reverse the string.
puts "#{name.strip} is the string with leading and trailing whitespace removed." # Using strip method to remove leading and trailing whitespace from the string.

# String Indexing and slicing
puts "The first character of the string is: #{name[0]}" # Using indexing to get the first character of the string.
puts "The last character of the string is: #{name[-1]}" # Using negative indexing to get the last character of the string.
puts "The substring from index 0 to 2 is: #{name[0..2]}" # Using slicing to get a substring from index 0 to 2.
puts "The substring from index 1 to the end is: #{name[1..-1]}" # Using slicing to get a substring from index 1 to the end of the string.
puts "The substring from index 0 to 2 is: #{name[0, 3]}" # Using slicing to get a substring from index 0 with a length of 3.
puts "Print the string using character: #{name["i"]}" # Using character indexing to get the character at index "i" in the string.

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

# Math and Numbers
puts "Absolute value: #{-5.abs}" # Using abs method to get the absolute value of a number.
puts "Round: #{3.7.round}" # Using round method to round a number to the nearest integer.
puts "Floor: #{3.7.floor}" # Using floor method to round a number down to the nearest integer.
puts "Ceil: #{3.2.ceil}" # Using ceil method to round a number up to the nearest integer.
puts "Square root: #{Math.sqrt(36)}" # Using sqrt method to get the square root of a number.
puts "Power: #{2.pow(3)}" # Using pow method to get the result of a number raised to the power of another number.
puts "Maximum: #{[num1, num2].max}" # Using max method to get the maximum value from a list of numbers.
puts "Minimum: #{[num1, num2].min}" # Using min method to get the minimum value from a list of numbers.
puts "Convert to integer: #{3.7.to_i}" # Using to_i method to convert a float to an integer.
puts "Convert to float: #{3.to_f}" # Using to_f method to convert an integer to a float.
puts "Convert to string: #{num1.to_s}" # Using to_s method to convert a number to a string.

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

# Array in Ruby
my_array = [1,5,2,4,3,5,1]
puts "The first element of the array is: #{my_array[0]}" # Using indexing to get the first element of the array.
puts "The last element of the array is: #{my_array[-1]}" # Using negative indexing to get the last element of the array.
puts "The length of the array is: #{my_array.length}" # Using length method to get the length of the array.
puts "The array in reverse is: #{my_array.reverse}" # Using reverse method to reverse the array.
puts "The array sorted is: #{my_array.sort}" # Using sort method to sort the array.
puts "The array with duplicates removed is: #{my_array.uniq}" # Using uniq method to remove duplicates from the array.
puts "The array with the first element removed is: #{my_array[1..-1]}" # Using slicing to get a new array with the first element removed.
puts "The array with the last element removed is: #{my_array[0..-2]}" # Using slicing to get a new array with the last element removed.
puts "The array with the first and last element removed is: #{my_array[1..-2]}" # Using slicing to get a new array with the first and last element removed.
puts "The array with the first two elements removed is: #{my_array[2..-1]}" # Using slicing to get a new array with the first two elements removed.
puts "The array with the last two elements removed is: #{my_array[0..-3]}" # Using slicing to get a new array with the last two elements removed.
puts "The array with the first and last two elements removed is: #{my_array[2..-3]}" # Using slicing to get a new array with the first and last two elements removed.

my_friends = ["Ali", "Ahmed", "Sara", "Aisha", "Omar"]
puts "My friends are: #{my_friends}" # Using string interpolation to print the array of friends.
puts "The first friend is: #{my_friends[0]}" # Using indexing to get the first friend from the array.
puts "The last friend is: #{my_friends[-1]}" # Using negative indexing to get the last friend from the array.
puts "The number of friends I have is: #{my_friends.length}" # Using length method to get the number of friends in the array.
puts "My friends in reverse order are: #{my_friends.reverse}" # Using reverse method to reverse the order of the friends in the array.
puts "My friends sorted alphabetically are: #{my_friends.sort}" # Using sort method to sort the friends in alphabetical order.
puts "My friends without duplicates are: #{my_friends.uniq}" # Using uniq method to remove duplicates from the array of friends.
puts "My friends without the first friend are: #{my_friends[1..-1]}" # Using slicing to get a new array of friends without the first friend.
puts "My friends without the last friend are: #{my_friends[0..-2]}" # Using slicing to get a new array of friends without the last friend.
puts "My friends without the first and last friend are: #{my_friends[1..-2]}" # Using slicing to get a new array of friends without the first and last friend.  
puts "My friends without the first two friends are: #{my_friends[2..-1]}" # Using slicing to get a new array of friends without the first two friends.
puts "My friends without the last two friends are: #{my_friends[0..-3]}" # Using slicing to get a new array of friends without the last two friends.
puts "My friends without the first and last two friends are: #{my_friends[2..-3]}" # Using slicing to get a new array of friends without the first and last two friends.


# Hashes in Ruby
my_hash = {"name" => "Ali", "age" => 25, "city" => "Gandhinagar"}
puts "My name is: #{my_hash["name"]}" # Using string key to get the value from the hash.
puts "My age is: #{my_hash["age"]}" # Using string key to get the value from the hash.
puts "My city is: #{my_hash["city"]}" # Using string key to get the value from the hash.
puts "The keys in the hash are: #{my_hash.keys}" # Using keys method to get the keys from the hash.
puts "The values in the hash are: #{my_hash.values}" # Using values method to get the values from the hash.
puts "The hash in reverse is: #{my_hash.to_a.reverse.to_h}" # Using to_a method to convert the hash to an array, then using reverse method to reverse the array, and finally using to_h method to convert the array back to a hash.
puts "The hash with the name key removed is: #{my_hash.reject { |key, value| key == "name" }}" # Using reject method to get a new hash with the name key removed.
puts "The hash with the age key removed is: #{my_hash.reject { |key, value| key == "age" }}" # Using reject method to get a new hash with the age key removed.
puts "The hash with the city key removed is: #{my_hash.reject { |key, value| key == "city" }}" # Using reject method to get a new hash with the city key removed.
puts "The hash with the name key updated is: #{my_hash.merge({"name" => "Ahmed"})}" # Using merge method to get a new hash with the name key updated.
puts "The hash with the age key updated is: #{my_hash.merge({"age" => 30})}" # Using merge method to get a new hash with the age key updated.
puts "The hash with the city key updated is: #{my_hash.merge({"city" => "Ahmedabad"})}" # Using merge method to get a new hash with the city key updated.  

# Control flow in Ruby
# If statement
character_age = 25
if character_age < 18
    puts "You are a minor."
elsif character_age >= 18 && character_age < 65
    puts "You are an adult."
else 
    puts "You are a senior citizen."
end

# Ternary statement
var = 10
 result = var > 5 ? "Greater than 5" : "Less than or equal to 5"
 puts result

# Loop Statements
# While loop
counter = 0
while counter < 5
    puts "Counter: #{counter}"
    counter += 1
end

x = 4
while x >= 1
    puts "x: #{x}"
    #Revers counting
    x = x - 1
end

#Do While Loop
counter = 0
begin
    puts "Counter: #{counter}"
    counter += 1
rescue 
    puts "An error occurred: #{$!}"
end while counter < 5

#For Loop
x = 1
for i in 1..5
    puts "x: #{x}"
    x = x + 1
end

#For Loop with array
my_array = ["Ali", "Hasan", "Hussain", "Ahmed", "Sara"]
for friend in my_array do
    puts friend
end



# Until Loop
counter = 0
until counter >= 5
    puts "Counter: #{counter}"
    counter += 1
end

# Case Statement
day = "This is Case statement example"
case 
when day.match(/\d/)
    puts "String contains number"
when day.match(/[a-zA-Z]/)
    puts "String contains letters"
else 
    puts "String does not contain numbers & letters"
end

