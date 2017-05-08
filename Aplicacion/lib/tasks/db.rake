namespace :db do

  desc "seed_fu only in test-database"
  task seed_fu_test: :environment do
    Rails.env = 'test'
    puts "Seeding will be made in test-base ONLY!"
    Rake::Task["db:seed_fu"].execute
  end

end