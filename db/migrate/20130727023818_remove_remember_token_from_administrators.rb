class RemoveRememberTokenFromAdministrators < ActiveRecord::Migration
  def up
    remove_column :administrators, :remember_token
  end

  def down
    add_column :administrators, :remember_token, :string
  end
end
