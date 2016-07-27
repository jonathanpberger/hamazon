namespace :db do
  desc "Destroy your local database and restore with sample data"
  task :refresh do
    ENV['AUTO_ACCEPT'] = "not nil" # use default admin creds
    begin
      Rake::Task["db:drop"].invoke
      Rake::Task["db:create"].invoke
      Rake::Task["db:schema:load"].invoke
      Rake::Task["seed:all"].invoke
      Rake::Task["spree_sample:load"].invoke
    end
  end
end
