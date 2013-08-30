class AddDateToRequestField < ActiveRecord::Migration
  def change
    add_column :request_fields, :date, :date
  end
end
