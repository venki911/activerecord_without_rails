require 'active_record'
require 'sqlite3'
require 'logger'

# Rails tasks for ActiveRecord
include ActiveRecord::Tasks

# ActiveRecord database connection
env = ENV["ENV"] ? ENV["ENV"] : 'development'
ActiveRecord::Base.logger = Logger.new("log/db.log")
configuration = YAML::load(IO.read("config/database.yml"))
ActiveRecord::Base.establish_connection(configuration[env])

# Classes required
require './lib/app/models/user'

module App
end
