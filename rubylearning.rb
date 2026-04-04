# ==========================================
# Ruby Programming Tutorial: Basics to Advanced
# ==========================================
# This file serves as a comprehensive guide to Ruby programming,
# covering both basic and advanced concepts with detailed comments
# and executable examples. Run this file to see the output of each section.

# ==========================================
# 1. INTRODUCTION TO RUBY
# ==========================================
# Ruby is a dynamic, open-source programming language with a focus on simplicity
# and productivity. It has an elegant syntax that is natural to read and easy to write.
# Ruby is object-oriented, meaning everything is an object, including numbers and strings.

puts "=== 1. INTRODUCTION ==="
puts "Welcome to Ruby Programming!"
puts "Ruby version: #{RUBY_VERSION}"
puts "Platform: #{RUBY_PLATFORM}"
puts ""

# ==========================================
# 2. OUTPUT METHODS
# ==========================================
# Ruby provides several methods for output:
# - puts: Adds a newline after output
# - print: No newline after output
# - p: Shows the object representation (useful for debugging)
# - printf: Formatted output like C's printf

puts "=== 2. OUTPUT METHODS ==="
print "Hello "  # No newline
print "World!"
puts ""  # Just a newline

puts "This is puts - adds newline automatically"
p "This is p - shows object representation"  # Shows quotes
printf("Formatted output: %s is %d years old\n", "Ruby", 30)
puts ""

# ==========================================
# 3. VARIABLES AND CONSTANTS
# ==========================================
# Variables in Ruby:
# - Start with lowercase or underscore
# - Can contain letters, numbers, underscores
# - Are dynamically typed (no need to declare type)
# - Constants start with uppercase and are meant to be immutable

puts "=== 3. VARIABLES AND CONSTANTS ==="
name = "Ruby"  # Variable
AGE = 30       # Constant (convention, not enforced)
_name = "Private variable"

puts "Variable: #{name}"
puts "Constant: #{AGE}"
puts "Private: #{_name}"
puts ""

# ==========================================
# 4. DATA TYPES
# ==========================================
# Ruby's built-in data types:
# - Numbers: Integer, Float, Complex, Rational
# - Strings: Mutable sequences of characters
# - Arrays: Ordered collections
# - Hashes: Key-value pairs
# - Symbols: Immutable identifiers
# - Booleans: true, false
# - nil: Represents absence of value

puts "=== 4. DATA TYPES ==="
integer_num = 42
float_num = 3.14
string_val = "Hello"
array_val = [1, 2, 3]
hash_val = {"key" => "value"}
symbol_val = :symbol
boolean_val = true
nil_val = nil

puts "Integer: #{integer_num} (class: #{integer_num.class})"
puts "Float: #{float_num} (class: #{float_num.class})"
puts "String: #{string_val} (class: #{string_val.class})"
puts "Array: #{array_val} (class: #{array_val.class})"
puts "Hash: #{hash_val} (class: #{hash_val.class})"
puts "Symbol: #{symbol_val} (class: #{symbol_val.class})"
puts "Boolean: #{boolean_val} (class: #{boolean_val.class})"
puts "Nil: #{nil_val} (class: #{nil_val.class})"
puts ""

# ==========================================
# 5. STRINGS
# ==========================================
# Strings in Ruby are mutable and support many operations.
# String literals can use single quotes (') or double quotes (").
# Double quotes allow interpolation with #{...}

puts "=== 5. STRINGS ==="
single_quoted = 'Single quoted string'
double_quoted = "Double quoted string with interpolation: #{name}"

puts "Single quoted: #{single_quoted}"
puts "Double quoted: #{double_quoted}"

# String methods
test_string = "  Hello, Ruby World!  "
puts "Original: '#{test_string}'"
puts "Uppercase: '#{test_string.upcase}'"
puts "Downcase: '#{test_string.downcase}'"
puts "Length: #{test_string.length}"
puts "Strip: '#{test_string.strip}'"
puts "Include 'Ruby': #{test_string.include?('Ruby')}"
puts "Reverse: '#{test_string.reverse}'"
puts "Split: #{test_string.split}"

# String indexing and slicing
puts "First character: '#{test_string[0]}'"
puts "Last character: '#{test_string[-1]}'"
puts "Substring 0..4: '#{test_string[0..4]}'"
puts "Substring 7..-1: '#{test_string[7..-1]}'"
puts ""

# ==========================================
# 6. NUMBERS AND MATH
# ==========================================
# Ruby supports integers and floats natively.
# Math module provides additional functions.

puts "=== 6. NUMBERS AND MATH ==="
a = 10
b = 3
c = 3.5

puts "Basic operations:"
puts "#{a} + #{b} = #{a + b}"
puts "#{a} - #{b} = #{a - b}"
puts "#{a} * #{b} = #{a * b}"
puts "#{a} / #{b} = #{a / b} (integer division)"
puts "#{a} % #{b} = #{a % b}"
puts "#{a} ** #{b} = #{a ** b}"

puts "Float operations:"
puts "#{c} + #{a} = #{c + a}"
puts "#{c}.round = #{c.round}"
puts "#{c}.floor = #{c.floor}"
puts "#{c}.ceil = #{c.ceil}"

puts "Math module:"
puts "Math.sqrt(16) = #{Math.sqrt(16)}"
puts "Math.sin(Math::PI/2) = #{Math.sin(Math::PI/2)}"
puts "Math.log(10) = #{Math.log(10)}"
puts ""

# ==========================================
# 7. ARRAYS
# ==========================================
# Arrays are ordered collections that can hold any type of object.
# They are zero-indexed and support negative indexing.

puts "=== 7. ARRAYS ==="
numbers = [1, 2, 3, 4, 5]
mixed = [1, "two", :three, [4, 5]]

puts "Numbers array: #{numbers}"
puts "Mixed array: #{mixed}"

puts "Array operations:"
puts "First element: #{numbers.first}"
puts "Last element: #{numbers.last}"
puts "Length: #{numbers.length}"
puts "Empty?: #{numbers.empty?}"
puts "Include 3?: #{numbers.include?(3)}"

puts "Array methods:"
puts "Reverse: #{numbers.reverse}"
puts "Sort: #{numbers.sort}"
puts "Uniq: #{[1,2,2,3,3,3].uniq}"
puts "Sum: #{numbers.sum}"
puts "Max: #{numbers.max}"
puts "Min: #{numbers.min}"

# Array modification
numbers.push(6)
puts "After push(6): #{numbers}"
numbers.pop
puts "After pop: #{numbers}"
numbers.unshift(0)
puts "After unshift(0): #{numbers}"
numbers.shift
puts "After shift: #{numbers}"

# Array slicing
puts "Slice 1..3: #{numbers[1..3]}"
puts "Slice 2, 3: #{numbers[2, 3]}"
puts ""

# ==========================================
# 8. HASHES
# ==========================================
# Hashes are key-value pairs, similar to dictionaries in other languages.
# Keys can be any object, but symbols are commonly used.

puts "=== 8. HASHES ==="
person = {"name" => "Alice", "age" => 30, "city" => "New York"}
symbol_hash = {name: "Bob", age: 25, city: "London"}

puts "Hash with string keys: #{person}"
puts "Hash with symbol keys: #{symbol_hash}"

puts "Accessing values:"
puts "person['name'] = #{person['name']}"
puts "symbol_hash[:name] = #{symbol_hash[:name]}"

puts "Hash methods:"
puts "Keys: #{person.keys}"
puts "Values: #{person.values}"
puts "Key-value pairs: #{person.to_a}"
puts "Has key 'name'?: #{person.has_key?('name')}"
puts "Has value 30?: #{person.has_value?(30)}"

# Hash modification
person["email"] = "alice@example.com"
puts "After adding email: #{person}"
person.delete("city")
puts "After deleting city: #{person}"
puts ""

# ==========================================
# 9. SYMBOLS
# ==========================================
# Symbols are immutable identifiers, often used as hash keys.
# They are more memory efficient than strings for repeated use.

puts "=== 9. SYMBOLS ==="
sym1 = :hello
sym2 = :hello
str1 = "hello"
str2 = "hello"

puts "Symbol :hello == :hello: #{sym1 == sym2}"
puts "String 'hello' == 'hello': #{str1 == str2}"
puts "Symbol object_id: #{sym1.object_id}"
puts "Same symbol object_id: #{sym2.object_id}"
puts "String object_id: #{str1.object_id}"
puts "Different string object_id: #{str2.object_id}"
puts ""

# ==========================================
# 10. METHODS
# ==========================================
# Methods are reusable blocks of code.
# They can take parameters and return values.

puts "=== 10. METHODS ==="

# Simple method
def greet(name)
  "Hello, #{name}!"
end

puts greet("World")

# Method with default parameters
def greet_with_default(name = "Anonymous")
  "Hello, #{name}!"
end

puts greet_with_default
puts greet_with_default("Ruby")

# Method with multiple parameters
def add_numbers(a, b)
  a + b
end

puts "5 + 3 = #{add_numbers(5, 3)}"

# Method with variable arguments
def sum_all(*numbers)
  numbers.sum
end

puts "Sum of 1,2,3,4,5 = #{sum_all(1,2,3,4,5)}"

# Method with keyword arguments
def create_person(name:, age:, city: "Unknown")
  {name: name, age: age, city: city}
end

person = create_person(name: "Charlie", age: 35, city: "Paris")
puts "Created person: #{person}"
puts ""

# ==========================================
# 11. CONTROL STRUCTURES
# ==========================================
# Control structures direct the flow of execution.

puts "=== 11. CONTROL STRUCTURES ==="

# If-elsif-else
age = 25
if age < 18
  puts "You are a minor"
elsif age < 65
  puts "You are an adult"
else
  puts "You are a senior"
end

# Unless (opposite of if)
temperature = 20
puts "It's cold" unless temperature > 25

# Ternary operator
result = age >= 18 ? "Adult" : "Minor"
puts "You are: #{result}"

# Case statement
day = "Monday"
case day
when "Monday"
  puts "Start of work week"
when "Friday"
  puts "TGIF!"
when "Saturday", "Sunday"
  puts "Weekend!"
else
  puts "Regular day"
end

# Case with ranges
score = 85
grade = case score
        when 90..100 then "A"
        when 80..89 then "B"
        when 70..79 then "C"
        else "F"
        end
puts "Score #{score} = Grade #{grade}"
puts ""

# ==========================================
# 12. LOOPS
# ==========================================
# Ruby provides several looping constructs.

puts "=== 12. LOOPS ==="

# While loop
puts "While loop:"
i = 0
while i < 5
  print "#{i} "
  i += 1
end
puts ""

# Until loop (opposite of while)
puts "Until loop:"
i = 0
until i >= 5
  print "#{i} "
  i += 1
end
puts ""

# For loop with range
puts "For loop with range:"
for num in 1..5
  print "#{num} "
end
puts ""

# Each iterator (preferred way)
puts "Each iterator:"
(1..5).each { |num| print "#{num} " }
puts ""

# Each with array
puts "Each with array:"
fruits = ["apple", "banana", "cherry"]
fruits.each { |fruit| puts "I like #{fruit}" }

# Times method
puts "Times method:"
5.times { |i| print "#{i} " }
puts ""

# Loop with break and next
puts "Loop with break and next:"
(1..10).each do |num|
  next if num.even?  # Skip even numbers
  break if num > 7   # Stop at 8
  print "#{num} "
end
puts ""
puts ""

# ==========================================
# 13. CLASSES AND OBJECTS
# ==========================================
# Ruby is object-oriented. Everything is an object.
# Classes define blueprints for objects.

puts "=== 13. CLASSES AND OBJECTS ==="

class Person
  # Constructor
  def initialize(name, age)
    @name = name  # Instance variable
    @age = age
  end

  # Getter methods
  def name
    @name
  end

  def age
    @age
  end

  # Setter methods
  def name=(new_name)
    @name = new_name
  end

  def age=(new_age)
    @age = new_age
  end

  # Instance method
  def introduce
    "Hi, I'm #{@name} and I'm #{@age} years old."
  end

  # Class method
  def self.species
    "Homo sapiens"
  end
end

# Create objects
person1 = Person.new("David", 28)
person2 = Person.new("Eva", 32)

puts person1.introduce
puts person2.introduce
puts "Person species: #{Person.species}"

# Access attributes
puts "#{person1.name} is #{person1.age} years old"

# Modify attributes
person1.age = 29
puts "#{person1.name} is now #{person1.age} years old"
puts ""

# ==========================================
# 14. INHERITANCE
# ==========================================
# Classes can inherit behavior from parent classes.

puts "=== 14. INHERITANCE ==="

class Student < Person
  def initialize(name, age, grade)
    super(name, age)  # Call parent constructor
    @grade = grade
  end

  def grade
    @grade
  end

  def introduce
    super + " I'm in grade #{@grade}."
  end
end

student = Student.new("Frank", 16, 10)
puts student.introduce
puts "Student is a Person: #{student.is_a?(Person)}"
puts ""

# ==========================================
# 15. MODULES
# ==========================================
# Modules are collections of methods and constants.
# They can be mixed into classes.

puts "=== 15. MODULES ==="

module Greetable
  def greet
    "Hello from #{self.class}!"
  end
end

module Walkable
  def walk
    "Walking..."
  end
end

class Robot
  include Greetable
  include Walkable
end

robot = Robot.new
puts robot.greet
puts robot.walk

# Module as namespace
module MathUtils
  PI = 3.14159

  def self.circle_area(radius)
    PI * radius * radius
  end
end

puts "Circle area with radius 5: #{MathUtils.circle_area(5)}"
puts "MathUtils::PI = #{MathUtils::PI}"
puts ""

# ==========================================
# 16. EXCEPTIONS
# ==========================================
# Exceptions handle errors and unexpected situations.

puts "=== 16. EXCEPTIONS ==="

begin
  # Code that might raise an exception
  result = 10 / 0
rescue ZeroDivisionError => e
  puts "Caught division by zero: #{e.message}"
rescue => e
  puts "Caught general error: #{e.message}"
ensure
  puts "This always executes"
end

# Raising exceptions
def divide(a, b)
  raise ArgumentError, "Division by zero" if b == 0
  a / b
end

begin
  puts divide(10, 2)
  puts divide(10, 0)
rescue ArgumentError => e
  puts "Custom error: #{e.message}"
end
puts ""

# ==========================================
# 17. FILE I/O
# ==========================================
# Ruby provides methods for reading from and writing to files.

puts "=== 17. FILE I/O ==="

# Writing to a file
File.open("example.txt", "w") do |file|
  file.puts "Hello, Ruby file!"
  file.puts "This is a test file."
end

# Reading from a file
puts "Reading file contents:"
File.open("example.txt", "r") do |file|
  file.each_line { |line| puts line }
end

# Reading entire file
content = File.read("example.txt")
puts "File content length: #{content.length} characters"

# File operations
puts "File exists: #{File.exist?('example.txt')}"
puts "File size: #{File.size('example.txt')} bytes"

# Clean up
File.delete("example.txt") if File.exist?("example.txt")
puts ""

# ==========================================
# 18. REGULAR EXPRESSIONS
# ==========================================
# Regular expressions are patterns for matching text.

puts "=== 18. REGULAR EXPRESSIONS ==="

text = "The quick brown fox jumps over the lazy dog"
pattern = /fox/

puts "Text: #{text}"
puts "Pattern /fox/ matches: #{text.match?(pattern)}"
puts "Match object: #{text.match(pattern)}"

# More complex patterns
email_pattern = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
test_emails = ["user@example.com", "invalid-email", "another@test.co.uk"]

test_emails.each do |email|
  puts "#{email} is valid: #{email.match?(email_pattern)}"
end

# String methods with regex
phone = "(555) 123-4567"
cleaned_phone = phone.gsub(/\D/, "")  # Remove non-digits
puts "Original phone: #{phone}"
puts "Cleaned phone: #{cleaned_phone}"

# Splitting with regex
sentence = "Hello, world! How are you?"
words = sentence.split(/\W+/)
puts "Words: #{words}"
puts ""

# ==========================================
# 19. BLOCKS, PROCS, AND LAMBDAS
# ==========================================
# Blocks are chunks of code that can be passed to methods.
# Procs and lambdas are objects that contain blocks.

puts "=== 19. BLOCKS, PROCS, AND LAMBDAS ==="

# Block example
puts "Using blocks:"
[1, 2, 3, 4, 5].each { |num| print "#{num * 2} " }
puts ""

# Proc example
square = proc { |x| x * x }
puts "Proc result: #{square.call(5)}"

# Lambda example
add = lambda { |a, b| a + b }
puts "Lambda result: #{add.call(3, 4)}"

# Difference between proc and lambda
def test_proc_vs_lambda
  p = proc { return "proc return" }
  l = lambda { return "lambda return" }

  puts p.call
  puts l.call
  "method end"
end

puts test_proc_vs_lambda
puts ""

# ==========================================
# 20. METAPROGRAMMING BASICS
# ==========================================
# Metaprogramming is writing code that writes code.

puts "=== 20. METAPROGRAMMING BASICS ==="

class DynamicClass
  # Define methods dynamically
  [:hello, :world, :ruby].each do |method_name|
    define_method(method_name) do
      "Method #{method_name} called!"
    end
  end

  # Define attributes dynamically
  [:name, :age].each do |attr|
    # Getter
    define_method(attr) do
      instance_variable_get("@#{attr}")
    end

    # Setter
    define_method("#{attr}=") do |value|
      instance_variable_set("@#{attr}", value)
    end
  end
end

obj = DynamicClass.new
puts obj.hello
puts obj.world

obj.name = "Dynamic"
obj.age = 1
puts "Name: #{obj.name}, Age: #{obj.age}"

# Method missing
class MethodMissingExample
  def method_missing(name, *args)
    "You called #{name} with args: #{args.inspect}"
  end
end

example = MethodMissingExample.new
puts example.any_method("arg1", "arg2")
puts ""

# ==========================================
# 21. GEMS AND LIBRARIES
# ==========================================
# Gems are Ruby packages. RubyGems manages them.

puts "=== 21. GEMS AND LIBRARIES ==="

# Check if gems are available (this will vary based on installation)
begin
  require 'date'
  puts "Date library loaded successfully"
  today = Date.today
  puts "Today is: #{today}"
rescue LoadError
  puts "Date library not available"
end

# Common built-in libraries
puts "Time now: #{Time.now}"
puts "Random number: #{rand(100)}"

# JSON example (if available)
begin
  require 'json'
  data = {name: "Ruby", version: "3.0", awesome: true}
  json_string = JSON.generate(data)
  puts "JSON: #{json_string}"
  parsed = JSON.parse(json_string)
  puts "Parsed: #{parsed}"
rescue LoadError
  puts "JSON library not available"
end
puts ""

# ==========================================
# CONCLUSION
# ==========================================
puts "=== CONCLUSION ==="
puts "Congratulations! You've completed the Ruby basics to advanced tutorial."
puts "Ruby is a powerful, flexible language with a rich ecosystem."
puts "Key takeaways:"
puts "- Everything is an object"
puts "- Code should be readable and elegant"
puts "- Duck typing: If it walks like a duck and quacks like a duck, it's a duck"
puts "- Convention over configuration"
puts "- There are many ways to do things, but some are more Ruby-like than others"
puts ""
puts "Happy coding with Ruby!"

