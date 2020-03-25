# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
     new_arr = []
     katz_deli.each_with_index {|person, index| new_arr << "#{index+1}. #{person}"}
     puts "The line is currently: #{new_arr.join(' ')}"
end
end


def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.index(name)+1} in line."
end


def now_serving(array)
  #should call next person in line then remove them from the options_from_collection_for_select
  #if nobody in line puts "There is nobody waiting to be served!"
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    #=> "Currently serving Ada."
    first = array[0]
    puts "Currently serving #{first}."
    array.shift
  end
end


now_serving(katz_deli)