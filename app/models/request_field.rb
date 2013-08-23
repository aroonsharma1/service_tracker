class RequestField < ActiveRecord::Base
  belongs_to :service_request
  attr_accessible :date, :done, :name, :notes, :service_request_id, :time
end
