def print_header
  puts "The students of Villains Academy".center(100)
  puts "-------------".center(100)
end
def print(students)
  students_by_cohorts = {}

  students.map do |student|
    name = student[:name]
    cohort = student[:cohort]
      if students_by_cohorts[cohort] == nil
        students_by_cohorts[cohort] = [name]
      else
        students_by_cohorts[cohort].push(name)
      end
    end
   students_by_cohorts.each do |k, v|
     puts "#{k} cohort: #{v.join(", ")}".center(100)
   end
end
def print_footer(names)
  if names.count < 2
    puts "Overall, we have #{names.count} great student".center(100)
  else
    puts "Overall, we have #{names.count} great students".center(100)
  end
end

def input_students
  students = []
  # get the first name
  puts "Please enter the name of the student"
  puts "To finish, just hit return twice"
  name = gets
  name = name[0...-1].to_sym
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
    # conditional for 1 student ending
    if students.count < 2
      puts "Now we have #{students.count} student"
    else
      puts "Now we have #{students.count} students"
    end
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
