class CreateRequestFields < ActiveRecord::Migration
  def change
    create_table :request_fields do |t|
      t.string :title
      t.boolean :done
      t.string :time
      t.string :date
      t.integer :service_request_id

      t.timestamps
    end
  end
end
