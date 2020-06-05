class School
    attr_accessor :grade, :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name,grade)
        if self.roster[grade]==nil
            self.roster[grade] = []
        end
        self.roster[grade] << student_name
        
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_list = {}
        @roster.each do |grade, student_name|
            sorted_list[grade] = @roster[grade].sort
        end
        sorted_list

    end
end