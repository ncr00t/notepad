require 'date'

class Task < Post

  def initialize
    super
    @due_date = Time.now
  end

  def to_strings
    created_time = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    deadline = "Deadline: #{@due_date}"
    return [deadline, @text, created_time]
  end

  def read_from_console
    puts "What to do?"
    @text = gets.chomp

    puts "What date to do the task? (date format dd.mm.yyyy, for example 01.01.2019)"
    input_due_date = gets.chomp
    @due_date = Date.parse(input_due_date)
  end

  def save
    super
    puts Task.name + " saved successfully!"
  end
end