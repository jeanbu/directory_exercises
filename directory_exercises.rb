def input_students
  puts "Please enter the names of the students".center(43)
  puts "To finish, just hit return twice".center(43)
  # create an empty array
  students = []
  # get the first nameand hobbie
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp 
  end
  # return the array of students
  students
end

def print_header
  puts "The students of Villains Academy".center(43)
  puts "-------------".center(43)
end

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)."
  end
end

def first_letter(students) 
  students.select do |student|
    student[:name].start_with?("D")
  end
end
  
  
def print_footer(students)
  puts "Overall, we have #{students.count} great students".center(43)
end
students = input_students
#nothing happens until we call the methods
print_header
print(first_letter(students))
print_footer(first_letter(students))