# Strings
my_string = "Hello World!"
puts my_string
my_second_string = 'Hello World'
puts my_second_string

# Escaping
my_third_string = 'What\'s going on'
puts my_third_string
greeting = 'How\'re all ya\'ll doin\'?'
puts greeting

# Interpolation
name = 'Joe'
puts name
greeting = "Hello, my name is #{name}" # Must be in double quotations
puts greeting
addition = "25 x 8 = #{25 * 8}"
puts addition

# Numbers
ten = 10
puts ten
fifteen_point_two = 15.2
puts fifteen_point_two
twenty_five_point_two = ten + fifteen_point_two
puts twenty_five_point_two
billion = 1_000_000_000 # Ruby Ignored the underscores
puts billion

# Arrays
my_arr = Array.new # Creates an empty array
my_other_array = [] # Creates an empty array
my_third_array = ['zero', 'one', 'two']

Array.new # => []
Array.new(2) # => [nil,nil]
Array.new(5,"A") # =>["A","A","A","A","A"]

my_arr.push("foobar") # Pushes a new array item onto the BEGINNING of the array
my_arr.push("gizmo")

# Hashes
my_hash = Hash.new # Creates an empty hash
my_other_has = {} # Creates an empty hash

my_hash["name"] = "Andrew" # Creates a key value pair in our hash
my_hash[:name] = 20 # Can use symbols (i.e. :name) as the key
person = { :name => "Joe", :age => 35, :job => "plumber"} # Create hash with objects
person = { "name" => "Joe", "age" => 35, "job" => "plumber"} # Using string rather than symbols





