require 'pry'

class School
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = Hash.new
    end

    def add_student(name, grade)
        if @roster.key?(grade) == false
        roster[grade] = []
        #binding.pry
        end
        roster[grade].push(name)
    end

    def grade(grade)
        roster[grade]  
    end

    def sort
        roster.each do |grade, name|
            roster[grade] = name.sort
        end
    end
end