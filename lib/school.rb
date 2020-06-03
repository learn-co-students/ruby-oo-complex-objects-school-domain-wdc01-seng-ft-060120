class School
  attr_accessor :roster, :student, :grade
  attr_reader :name
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade].push(student)
  end

  def grade(level)
    @roster.each do |grade, students|
      if grade == level
        @grade = @roster[grade]
      end
    end
    @grade
  end

  def sort
    sorted = @roster.reduce({}) do |memo, (grade, students)|
      memo[grade] = students.sort {|a, b| a<=>b }
      memo
    end
    sorted
  end

end

school = School.new("Bayside High School")

