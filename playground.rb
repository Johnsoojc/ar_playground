# if you have not installed the needed gems, please do the following:
# gem install sqlite3
# gem install activerecord

require "sqlite3"
# require is powerful, require means go to https://rubygems.org to download this particular gem
require "active_record"

# this line configures ActiveRecord to connect to a sqlite3 database in the same folder named "students.sqlite3"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./students.sqlite3")

# This sets up ActiveRecord to use Ruby OOP with SQL data
class Student < ActiveRecord::Base #module name is ActiveRecord, Base is the class inside this module called ActiveRecord, where is this bloody module ActiveRecord being parked?
  # where?????? its parked inside this gem called active_record, which is required already at the top(line 7)
end

####################################
# Write your test code here
# 1. Create a new student using new and save
# @student = Student.new(name: "austin", email: "austin@austin.com", age: 18)
# @student.save

####################################
# 2. Create a new student using create
# @student = Student.create(name: "jason", email: "jason@jason.com", age: 18)

####################################
# 3. Select all students
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p Student.all
# p "--"
# p Student.second
# p "--"

# Why can't you do Student.name or Student.email?
# BECAUSE.name is attribute of student object, it is not a method defined in gem active record, thus u cant run Student.name, u cant run .name on class name itself

####################################
# 4. Select the first student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p Student.first

#####################################
# 5. Select the last student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p Student.last

####################################
# 6. Use each to iterate through the #<ActiveRecord::Relation> object to display the name of each student

# Student.all.each_with_index do |stu, index|
#   puts "#{index+1}). Name: #{stu.name}, Email: #{stu.email}, Age: #{stu.age}"

# end
# p "----------------------------"
# Student.all.each do |stu|
#   puts "#{stu.id}). Name: #{stu.name}, Email: #{stu.email}, Age: #{stu.age}"

# end

# p "here i m trying to add a new student called haitham and show me his addition to the table"
# @student = Student.create(name:"haitham", email: "h@h.com", age: 20)
# p "----------------------------"
# Student.all.each do |stu|
#   puts "#{stu.id}). Name: #{stu.name}, Email: #{stu.email}, Age: #{stu.age}"

# end

####################################
# 7. Find student by the name Dr. Lois Pfeff using where.
# # pay attention to the object that is returned to you, is it the Student object or Active Record relation object?
# p Student.where(name: "Dr. Lois Pfeff")
# p "--searching with where age equals to 20---"
# p Student.where(age: 20)


# What will the following return to you? (remember to comment out the code!)
# p student.id
# p student.name
# p student.email
# p student.age

####################################
# 8. Find student by name using find_by
# # pay attention to the object that is returned to you, is it the Student object or Active Record relation object?
# p "-- searching with find_by age equals to 20---"
#  studenta = Student.find_by(age: 20)
# p "This student is found with age of 20: #{studenta.name}, #{studenta.email}, #{studenta.age}"

# What will the following return to you?
# p student.id
# p student.name
# p student.email
# p student.age

# Do research on the difference between "where" and "find_by".

####################################
# 9. Find the student with id = 7 using find and find_by
# pay attention to the object that is returned to you, is it the User object or Active Record relation object?
# p @studentb = Student.find(20)
# p @studentc = Student.find_by(id: 20)

####################################
# 10. Update information for student with id = 5 using student.email and save. Change the student's email to elsie@example.com
# @student5 = Student.find(5)
# @student5.update(email: "ssy@example.com")
# p @student5

####################################
# # 11. Now use update to update this student's age to 21.
# p "-- updating this student age to 21"
# @student5.update(age: 21)
# p @student5

####################################
# 12. Delete student with id 21 using delete

# p Student.delete(5)
# Student.all.each do |stu|
#   puts "#{stu.id}). Name: #{stu.name}, Email: #{stu.email}, Age: #{stu.age}"

# end

####################################
# 13. Delete student with id 22 using destroy

# Student.second.destroy
# Student.all[-2].destroy
# Student.find(16).destroy

# Student.all.each do |stu|
#   puts "#{stu.id}). Name: #{stu.name}, Email: #{stu.email}, Age: #{stu.age}"
# end

####################################
#14. update the ID of the objects since i deleted a few and added a few

# Student.all.each_with_index do |stu, index|
#  stu.update(id: index +1)
# end
# Student.all.each do |stu|
#   puts "#{stu.id}). Name: #{stu.name}, Email: #{stu.email}, Age: #{stu.age}"
# end
