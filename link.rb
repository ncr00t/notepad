class Link < Post

  def initialize
    super
    @url = ''
  end

  def to_strings
    created_time = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
    return [@url, @text, created_time]
  end

  def read_from_console
    puts "Enter link address: "
    @url = gets.chomp

    puts "Enter link description: "
    @text = gets.chomp
  end

  def save
    super
    puts Link.name + " saved successfully!"
  end
end
