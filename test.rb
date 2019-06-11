=begin 
    Ruby Cheatsheet by Amir Hesham
    Github: https://github.com/amirhesham65
=end

# OUTPUT TO THE CONSOLE
puts "Hello, World!"
print "Amir "
puts "Hesham"

# VARIABLES
name = "Amir"
age = 16
isCoding = true
age = 17

# CONCATIATION
puts "Your name is: " + name
puts "You are #{age} years old!"

# CASTING
puts age.to_s + " is agood age."
puts 3.12.to_i + 5
puts 3.to_f + 2.0

# STRINGS
state = "Los Angeles"
puts state.length
puts state[4]
puts state.include? "Angel"
puts state[0, 3]

# ARITHMETIC AND MATH
puts 2 * 5
puts 2 ** 5
puts 10 % 3
puts 1 + 2 * 3
puts 10 / 3.0
num = 0
num += 10
num = -13
puts num.abs()
puts num.round()
puts Math.sqrt(144)
puts Math.log(0)

# USER INPUT
puts "Enter your name: "
# gets => Gets the user input in console (PS: FUCK JAVA)
# .chomp() prevents adding a new line break after the value
#### name = gets.chomp                                        #############################
puts "Hello, #{name}! How are you?"

# ARRAYS
animals = ["🐕", "🐈", "🦅", "🐼", "🐀"] # Emojis will run on MacOS (not sure about windows)
animals[3] = "🐢"
puts animals[2]
puts animals[-1]
puts "\n" + animals[1, 3].to_s # [start, length]
puts animals.length
animals.push("🐞") # .pop() will remove the last item
puts animals.reverse
hasDog = animals.include? "🦅"
number_grid = [[1, 2], [3, 4]] # 2D
number_grid[0][1] = 10
puts number_grid[0][1]

# FUNCTIONS
def add_numbers(num1, num2=10)
    return num1 + num2
end
# num2 parameter has a default value of 10
puts add_numbers(5) 

# CONDITIONALS
is_frontend_developer = true
is_backend_developer = false
# Logical Operators: and, or
# Comparison Operators: <, >, <=, >=, ==, !=, String.equlas()
if is_frontend_developer and !is_backend_developer
    puts "You are a Front-end developer!"
elsif !is_frontend_developer and is_backend_developer 
    puts "You are a Back-end developer!"
else 
    puts "You are a Full-stack developer"
end
my_grade = "A"
case my_grade
    when "A"
        puts "You pass!"
    when "F"
        puts "You fail!"
    else
        puts "Invalid grade!"
end

# DICTIONARIES
students = {
    "Amir" => "A+",
    :Karim => "A+",
    :Ryan => "F"
}
students["Ryan"] = "B"
puts students["Ryan"]

# LOOPS
index = 1
while index <= 5 
    puts index
    index += 1
end
for index in 0..5 
    puts index
end
10.times do |index|
    puts index
end
colors = ['red', 'green', 'blue', 'gray']
for color in colors 
    puts color
end
nums = [1, 3, 5, 7]
nums.each do |num|
    puts num
end

# EXCEPTION CATCHING
begin
    num = 10/0
rescue ZeroDivisionError
    # raise "SOME_EXCEPTION"
    puts "Nothing"
rescue
    puts "All errors!"
end

# OOB
class Book
    # Attributes access
    attr_accessor :title, :author
    # Constructor
    def initialize(title, author)
        @title = title
        @author = author
    end
    # Setters
    def title=(title)
        @title = title
    end
    # Getters
    def title
        return @title
    end
    # Methods
    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end
book1 = Book.new("The Subtle Art Of Not Giving A Fuck", "Mark Manson")
book1.readBook()

# INHERITANCE
class Story < Book
    attr_accessor :rythem
    def initialize(title, author, rythem)
        @rythem = rythem
        super(title, author)
    end
    def read_with_music()
        puts "lay lay lay lay...#{@title}"
    end
end

story1 = Story.new("Lullaby", "My mom", "lay")
story1.read_with_music

# IO: FILE READING AND WRITING
File.open("books.txt", "r") do |file|
    # puts file.read
    for line in file.readlines
        puts "Putted: " + line 
    end
    file.close()
end
File.open("books.txt", "a") do |file|
    # puts file.read
    file.write("\nThe Subtle Art Of Not Giving A Fuck, Mark Manson")
    file.close()
end
