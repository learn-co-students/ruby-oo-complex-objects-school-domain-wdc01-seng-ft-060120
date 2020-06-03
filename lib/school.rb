# code here!
class School
    attr_accessor :student, :grade
    attr_reader :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end
  
    def add_student(student, grade)
      if !@roster[grade]
        @roster[grade] = []
      end
      @roster[grade] << (student)
    end
  
    def grade(grade)
      @roster[grade]
    end
  
    def sort
      @roster.each do |grade, students_array|
        students_array.sort!
      end
    end
  
  end