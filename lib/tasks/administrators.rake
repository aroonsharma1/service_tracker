namespace :db do
  desc "Create default administrators"
  task populate: :environment do
    Administrators.create!(name: "admin",
                 email: "collegescootersmd@gmail.com",
                 password: "administrator",
                 password_confirmation: "administrator",
                 email_password: "5GuysFries")            
  end
end