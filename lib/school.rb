require "pry"

class School 
  attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {} 
end

def add_student(name, grade)
  if roster[grade]
    roster[grade] << name
  else
   roster[grade] = [name] 
  end
end

def grade(grade)
  roster[grade]
end

def sort
  roster.each do |grade, names|
  names.sort!
  end
end
  
end