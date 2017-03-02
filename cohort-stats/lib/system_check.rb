require 'pry'
require_relative 'system_check_submission'
require_relative 'student'

class SystemCheck
  require 'time'

  attr_reader :name, :due_date, :submissions, :student_object

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum = Grade::MEETS_EXPECTATIONS
    sum += Grade::EXCEEDS_EXPECTATIONS
    sum += Grade::DOES_NOT_MEET_EXPECTATIONS
    average = sum / 3.0
  end

  def did_student_complete_system_check?(student_object)
    @submissions.each do | submission |
      if submission.student == student_object
        return true
      end
    end
    return false
  end
end
