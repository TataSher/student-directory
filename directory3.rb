def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort) hobby: #{student[:hobby]}".center(100)
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(100)
end

def input_students
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  puts "Please enter the cohort of the student"
  puts "To finish, just hit return twice"
  cohort = gets.chomp
  puts "Please enter the hobby of the student"
  puts "To finish, just hit return twice"
  hobby = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
  students << {name: name, cohort: cohort, hobby: hobby}
  puts "Now we have #{students.count} students"
  # get another name from the user
  name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
