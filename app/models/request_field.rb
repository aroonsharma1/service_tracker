#Note title is describing the particular service e.x: brakefluid, or new battery
class RequestField < ActiveRecord::Base
  attr_accessible :date, :done, :service_request_id, :time, :title
end
