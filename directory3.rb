def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end
def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)}".center(100)
  end
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(100)
end

def input_students
  students = []
  # get the first name
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  puts "To re-type, type 'R'"
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
  # add the student hash to the array
    puts "Please enter the cohort of the student"
    cohort = gets.chomp.to_sym
    student_info = {name: name, cohort: cohort}
    if student_info[:cohort] == ""
      student_info[:cohort] = "n/a"
    end
    students << student_info
    puts "Now we have #{students.count} students"
  # get another name from the user
    puts "Please enter the name of the student"
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
