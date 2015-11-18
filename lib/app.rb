require 'active_record'
require 'sqlite3'
require 'logger'

# Rails tasks for ActiveRecord
include ActiveRecord::Tasks

# Classes required
require 'app/models/user'
require 'app/config'

module App
  def self.env
    ENV["ENV"] ? ENV["ENV"] : "development"
  end

  def self.config
    Config.instance
  end

  def self.start
    ActiveRecord::Base.establish_connection(config.db_current)
  end
end
