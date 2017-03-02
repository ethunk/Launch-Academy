class SystemCheckSubmission
  attr_reader :solution, :student, :grade
  include Grade

  def initialize(solution = "require 'yaml'", student)
    @solution = solution
    @student = student
  end

  def assign_grade(grade)
    if !Grade::GRADES.include?(grade)
      raise InvalidGradeError
    end
    @grade = grade
  end

  def graded?
    if !Grade::GRADES.include?(grade)
      false
    else
      true
    end
  end
end

class InvalidGradeError < StandardError
end
