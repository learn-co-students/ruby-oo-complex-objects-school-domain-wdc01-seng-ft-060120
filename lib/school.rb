
class School#============================================
   attr_reader \
    :roster,
    :name

    def initialize(name)
        @name = name
        @roster = {}
    end


    def roster
        @roster || {}
    end

    def add_student(name,grade)
        if @roster[grade] == nil
            @roster[grade] = []
        end
        @roster[grade] << name 
    end

    def grade(number)
        @roster[number]
    end
end#========#============================================