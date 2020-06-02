# code here!
require 'pry'

class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if !@roster.key?(grade)
            @roster[grade] = []
        end

        new_array = @roster[grade].push(student_name)

        @roster[grade] = new_array
    end

    def grade(grade)
        @grade = @roster[grade]
    end

    def sort
        @sort = @roster.each_value do |value|
            value.sort!
        end
    end
end


school = School.new("Lackey High School")
