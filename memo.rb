class Memo < Post

  def to_strings
    created_time = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    return @text.unshift(created_time)
  end

  def read_from_console
    puts "Write new memo (all text until word \"end\"):"

    @text = []
    line = nil

    while line != "end" do
      line = gets.chomp
      @text << line
    end

    @text.delete_at(@text.size - 1)
  end

  def save
    super
    puts Memo.name + " saved successfully!"
  end
end
