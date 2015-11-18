$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'app'

task :default => :migrate

module Rails; end
module SeedLoader
  def self.load_seed
    nil
  end
end

DatabaseTasks.env = App.env
DatabaseTasks.db_dir = App.config.db_dir
DatabaseTasks.database_configuration = App.config.db
DatabaseTasks.migrations_paths = App.config.db_migrations_dir
DatabaseTasks.root = __dir__
ActiveRecord::Tasks::DatabaseTasks.seed_loader = SeedLoader

task :environment do
  App.start
end

load 'active_record/railties/databases.rake'

