namespace :db do
  desc "Create default administrators"
  task populate: :environment do
    Administrators.create!(name: "admin",
                 email: "admin@admin.com",
                 password: "administrator",
                 password_confirmation: "administrator")            
  end
end