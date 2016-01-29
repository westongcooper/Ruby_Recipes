#environment.rb
#recursively requires all files in ./lib and down that end in .rb
require 'active_record'
require 'sqlite3'
require 'pry-byebug'

Dir.glob(File.join(".", "lib", "**", "*.rb")).each do |file|
    require file
end

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'zombies.db'
)
