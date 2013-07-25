# IF STATEMENTS
name = "Andrew"

if name == "Andrew
  puts "Hello Andrew
end

if name == "Andrew"
  puts "Hello Andrew"
else
  puts "Hello someone else"
end

# elseif

order = {:size => "medium"}

def make_small_coffe
  puts "Make small coffee"
end

def make_medium_coffee
  puts "Make medium coffee"
end

def make_large_coffee
  puts "Make large coffee"
end

def make_coffee
  puts "Make coffee"
end

if order[:size] == "small"
  make_small_coffee
elsif order[:size] == "medium" # This is elsif NOT elseif
  make_medium_coffee
elsif order[:size] == "large"
  make_large_coffee
else
  make_coffee
end

# if as a modifier

puts "making coffe" if customer.would_like_coffee?


# UNLESS STATEMENT

engine_on = true

if !engine_on # meaning if not engine_on
  puts "service engine" # should not be put, because "not engine_on" is false
end

unless engine_on # "unless engine_on" is better than "if not engine_on"
  "service engine"
end

# unless as a modifier

puts "service engine" unless engine_on



# CASE/WHEN STATEMENT

hour = 15

message = case
  when hour < 12
    puts "Good morning"
  when hour > 12 && hour < 17
    puts "good afternoon"
  else
    puts "Good Evening"
  end

puts message

# then

case
  when x > 20 then puts "<20" # "then" makes it possible to this on one lien
end


# WHILE LOOOP

arr = ["John","George", "Paul", "Ringo"]
i = 0

while arr[i]
  puts arr[i]
  i += 1
end

# while loop as a modifier

puts arr[i += 1] while arr[1]


# UNTIL LOOP

days_left = 7

until days_left == 0
  puts "There are still #{days_left} in the week"
  days_left -= 1
end

#until loop as a modifier

puts "there are still #{days_left -= 1} in the week" until days_left == 1


# FOR LOOP

arr = ["john", "George", "Paul", "Ringo"]

for item in arr
  puts item
end

# if looping over a hash, you can use two variabel names, one for key and one for has

joe = {:name => "Joe", :age => 30, :job => "plumber"}

for keys, val in joe
  puts "#{key} is #{val}"
end







