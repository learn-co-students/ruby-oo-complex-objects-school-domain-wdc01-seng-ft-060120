# code here!
require 'pry'

class School

    def initialize(name)
      @name = name
      @roster = {}
    end

    def roster
        @roster
    end

    def add_student (student_name, grade)
        if roster[grade] == nil
            roster[grade] = []
        end
        roster[grade] << student_name

        return roster
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        hash = {}
        roster.each_pair do |grade, name|
            hash[grade] = name.sort
        end

        return hash
    end


end