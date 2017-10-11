
class School

  require 'pry'
  def initialize(schoolname)
    @schoolname = schoolname
    @roster = {}
  end

attr_accessor :roster, :schoolname



  def add_student(name, grade)
    namess = name
    gradess = grade
    if @roster == nil
        @roster = {grade => []}
        @roster[grade] << name
    elsif @roster.keys.include?(grade)
        @roster[grade] << name
      elsif @roster.keys.include?(grade) == false
        @roster[grade] = []
        @roster[grade] << name
      end
  end


  def grade(grade)
    return roster[grade]
  end

  def sort

    roster.each {|k, v| v.sort!}

end

end
