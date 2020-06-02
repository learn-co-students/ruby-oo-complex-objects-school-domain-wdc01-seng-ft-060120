class School

  attr_reader :name, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ? (@roster[grade] << student) : (@roster[grade] = [student])
  end

  def grade(grade)
    @roster[grade] || []
  end

  def sort
    @roster.each_value {|students| students.sort!}
  end
  
end
