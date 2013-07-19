class AddRememberTokenToServiceRequests < ActiveRecord::Migration
  def change
    add_column :service_requests, :remember_token, :string
  end
end
