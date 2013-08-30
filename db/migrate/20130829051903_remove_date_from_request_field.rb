class RemoveDateFromRequestField < ActiveRecord::Migration
  def up
    remove_column :request_fields, :date
  end

  def down
    add_column :request_fields, :date, :string
  end
end
