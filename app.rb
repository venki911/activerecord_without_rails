require 'active_record'
require 'sqlite3'
require 'logger'

ActiveRecord::Base.logger = Logger.new('debug.log')
configuration = YAML::load(IO.read('config/database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])

class User < ActiveRecord::Base

end

u1 = User.new(name: "Juan")
u1.save
u2 = User.new(name: "Pepe")
u2.save
puts "Number of users: #{User.count}"
User.all.each do |user|
  puts user.inspect
end

