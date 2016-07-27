namespace :seed do
  task all: :environment do
    Rake::Task["seed:admin_user"].invoke unless Rails.env.production?
    Rake::Task["seed:spree_data"].invoke
  end

  task admin_user: :environment do
    Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
  end

  task spree_data: :environment do
    Spree::Core::Engine.load_seed if defined?(Spree::Core)
  end
end