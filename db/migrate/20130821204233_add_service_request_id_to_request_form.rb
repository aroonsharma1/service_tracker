class AddServiceRequestIdToRequestForm < ActiveRecord::Migration
  def change
    add_column :request_forms, :service_request_id, :integer
  end
end
