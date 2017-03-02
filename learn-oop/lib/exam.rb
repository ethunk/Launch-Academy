#part 4

class Exam
  attr_reader :title, :due_date
  attr_writer :assigned_to
  attr_accessor :grade

  def initialize(title, due_date)
    @title = title
    @due_date = due_date
    @assigned_to = nil
    @grade = grade
  end

  def assigned_to=(student)
    @assigned_to = student

  end
end

exam = Exam.new("Lords of Discipline", "12/10/2016")
exam.assigned_to = "Pat Conroy"
