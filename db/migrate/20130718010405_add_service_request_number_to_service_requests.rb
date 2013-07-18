class AddServiceRequestNumberToServiceRequests < ActiveRecord::Migration
  def change
    add_column :service_requests, :service_request_number, :integer
  end
end
