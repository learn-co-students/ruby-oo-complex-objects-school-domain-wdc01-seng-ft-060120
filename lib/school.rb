# code here!
require 'pry' 

class School

    attr_reader :name
    attr_accessor :roster 

    def initialize(name)
        @name = name
        @roster = { } 
    end 
#roster will have key = grade; value = array of names
    def add_student(name, grade)
        if roster.key?(grade) == false
            roster[grade] = [ ]
            roster[grade] << name 
        else 
            roster[grade] << name
        end 
    end

    def grade(grade)
        roster[grade]
    end 

    def sort 
        roster.each do |grade, students_in_grade| 
        roster[grade] = students_in_grade.sort 
      #  binding.pry 
        end
    end
end
