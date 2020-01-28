gemfile = File.open("Gemfile", "a")
gemfile.puts("source 'https://rubygems.org'")
gemfile.puts("ruby '2.5.1'")
gemfile.puts("gem 'rspec'")
gemfile.puts("gem 'pry'")
gemfile.puts("gem 'rubocop', '~> 0.57.2'")
gemfile.puts("gem 'dotenv'")
gemfile.puts("gem 'byebug'")
gemfile.close

gemfile = File.open("Gemfile", "r")
puts "Gemfile contains :"
puts gemfile.read
gemfile.close