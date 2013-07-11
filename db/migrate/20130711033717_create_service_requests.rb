class CreateServiceRequests < ActiveRecord::Migration
  def change
    create_table :service_requests do |t|
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
