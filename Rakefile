require 'sqlite3'
require 'rom'
require 'rom/sql/rake_task'

namespace :db do
  task :init do
    Rake::Task[:'db:setup'].invoke
    Rake::Task[:'db:migrate'].invoke
    Rake::Task[:'db:fill'].invoke
    Rake::Task[:'db:import'].invoke
  end
  task :setup do
    ROM::SQL::RakeSupport.env = ROM.container(:sql, "sqlite://#{Dir.pwd}/nest-plant-tracker.sqlite3")
  end
  task :fill do
    system("sqlite3 nest-plant-tracker.sqlite3 -init db/dbinit.sql .quit")
  end
  task :import do
    system("sqlite3 nest-plant-tracker.sqlite3 -init db/import.sql .quit")
  end
end
