class AddEmailPasswordToAdministrators < ActiveRecord::Migration
  def change
    add_column :administrators, :email_password, :string
  end
end
