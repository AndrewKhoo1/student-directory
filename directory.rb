


@students = []
@months = [
'January',
'February',
'March',
'April',
'May',
'June',
'July',
'August',
'September',
'October',
'November',
'December'
];

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the students"
  puts "4. Exit"
end

def process
  selection = gets.chomp
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3"
      save_students
    when "4"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process
  end
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |student|
    puts "#{student[0].capitalize} (#{student[1].capitalize} cohort)"
end
end


def print_footer
  if @students.length > 0
    if @students.length > 1
      plural = "s"
    end
  puts "Overall, we have #{@students.count} great student#{plural}"
  else
  puts "No students"
end
end


def show_students
  print_header
  print_students_list
  print_footer
end

def input_students

  # get the name and cohort

  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  name = gets.strip
  puts "Please enter cohort"
  cohort = gets.strip
  if cohort.empty?
   cohort = "November"
  end

  while !@months.include? cohort.capitalize do
  puts "Typo! Please type again"
  cohort = gets.strip
  end


  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students.push([name, cohort])
    if @students.length > 1
      plural = "s"
    end
    puts "Now we have #{@students.count} student#{plural}"
    # get another name from the user
    puts "Enter a name"
    name = gets.strip
    if !name.empty?
    puts "Please enter cohort"
    cohort = gets.strip
    end

  end

  #Check to see the names in a cohort
  while !@students.empty? do
  puts "Enter cohort to see the names in that cohort"
  cohort = gets.strip
  @students.each { |x| if x[1] === cohort
  puts x[0].capitalize end}
  break if cohort.empty?
  puts ""
  end

  end


  def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[0].capitalize, student[1].capitalize]
    csv_line = student_data.join(", ")
    file.puts csv_line
  end
  file.close
  end




interactive_menu
