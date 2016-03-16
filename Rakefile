$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'app'

task :default => :migrate

module Rails; end
class Seeder
  def initialize(seed_file)
    @seed_file = seed_file
  end

  def load_seed
    raise "Seed file '#{@seed_file}' does not exist" unless File.file?(@seed_file)
    load @seed_file
  end
end

DatabaseTasks.env = App.env
DatabaseTasks.db_dir = App.config.db_dir
DatabaseTasks.database_configuration = App.config.db
DatabaseTasks.migrations_paths = App.config.db_migrations_dir
DatabaseTasks.seed_loader = Seeder.new(File.join(__dir__, 'db/seeds.rb'))
DatabaseTasks.root = __dir__

task :environment do
  App.start
end

load 'active_record/railties/databases.rake'

