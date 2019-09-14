require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'memo.rb'
require_relative 'task.rb'

puts "Welcome to the notepad!"
puts "What you want to write in notepad?"

post_types = Post.post_types

selected_type = -1

until selected_type >= 0 && selected_type < post_types.size
  post_types.each_with_index do |type, index|
    puts "\t#{index}.#{type}"
  end
  selected_type = gets.chomp.to_i
end

selected_post = Post.create(selected_type)

selected_post.read_from_console

selected_post.save


