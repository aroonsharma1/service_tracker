class RemovePasswordAndPasswordConfirmtationFromAdministrators < ActiveRecord::Migration
  def up
    remove_column :administrators, :password
    remove_column :administrators, :password_confirmation
  end

  def down
    add_column :administrators, :password_confirmation, :string
    add_column :administrators, :password, :string
  end
end
