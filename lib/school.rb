# code here!
require "pry"
class School
attr_accessor :roster

  def initialize(name)
    @name = name 
    @roster = {}
  end

  
 def add_student(name, grade)
 
 @roster[grade]  = [] if  @roster[grade].nil? 
 @roster[grade]  << name 
  
 end 
 
 def grade(grade)
   @roster[grade]
 end 
 
 def sort
  @roster.each do |key,value|
  @roster[key] = value.sort
  end 
   
 end 
 
end 