
# let's put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Darth Vader", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Nurse Ratched", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Michael Corleone", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Alex DeLarge", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "The Wicked Witch of the West", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Terminator", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Freddy Krueger", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "The Joker", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Joffrey Baratheon", cohort: :november, hobby: "football", height: "6 foot"},
  {name: "Norman Bates", cohort: :november, hobby: "football", height: "6 foot"}
]



def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

# def print(students)
#   students.each_with_index do |student, index|
#     puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
#   end
# end

def print(students)
  counter = 0
  index = 1
   until counter === students.length
    puts "#{index}. #{students[counter][:name]} (#{students[counter][:cohort]} cohort) Hobby: #{students[counter][:hobby]} Height: #{students[counter][:height]}".center(65)
    index +=1
    counter +=1
  end

end

# def nameCheck(students)
#   puts "Enter a letter to bring up students"
#   letter = gets.chomp
#   students.each do |student|
#     if student[:name].downcase[0] === letter
#       puts student[:name]
#     end
#
#   end
# end

def nameCheck(students)
  i = 0
  puts "Enter a letter to bring up students"
  letter = gets.chomp
  while i < students.length
    if students[i][:name][0] === letter.upcase
      puts students[i][:name]
    end
   i += 1
  end
end

# def twelveOrLess(students)
#   students.each do |student|
#     if student[:name].length < 12
#       puts student[:name]
#    end
# end
# end

def twelveOrLess(students)
  i = 0
  while i < students.length
    if students[i][:name].length < 12
      puts students[i][:name]
   end
  i += 1
end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end

end

student_list = input_students
print_header
print(students)
print_footer(students)
nameCheck(students)
twelveOrLess(students)
input_students
