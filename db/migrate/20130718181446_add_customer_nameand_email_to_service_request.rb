class AddCustomerNameandEmailToServiceRequest < ActiveRecord::Migration
  def change
    add_column :service_requests, :customer_first_name, :string
    add_column :service_requests, :customer_last_name, :string
    add_column :service_requests, :customer_email, :string
  end
end
