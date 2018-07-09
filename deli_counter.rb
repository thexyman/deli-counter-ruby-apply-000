# Write your code here.

katz_deli = []
$ticket_no = 1

def take_a_number(array)
  array.push($ticket_no)
  puts "Welcome! You're ticket number #{$ticket_no}"
  $ticket_no += 1
end

# take_a_number(array) => "Welcome! You're ticket number #1" [1]
# take_a_number(array) => "Welcome! you're ticket number #2" [1,2]

# now_serving(array) => "Currently serving: #1" [2]
# now_serving(array) => "Currently serving: #2" []

# take_a_number(array) => "Welcome! You're ticket number #3" [3]

def take_a_number(array, person)
  array.push(person)
  puts "Welcome, #{person}. You are number #{array.length} in line."
end


def line(array) 
  if array.empty?
    puts "The line is currently empty."   
  else  
    counter = 1
    str = "The line is currently:"
      array.each do |person|
      str += " #{counter}. #{person}"
      counter += 1
    end
    puts str  
  end
end


def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else  
    puts "Currently serving #{array[0]}."
    array.shift   
  end
end  

