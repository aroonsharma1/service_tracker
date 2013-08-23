class CreateRequestFields < ActiveRecord::Migration
  def change
    create_table :request_fields do |t|
      t.string :name
      t.string :notes
      t.string :date
      t.string :time
      t.boolean :done
      t.integer :service_request_id

      t.timestamps
    end
  end
end
