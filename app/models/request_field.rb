class RequestField < ActiveRecord::Base
  belongs_to :request_form
  attr_accessible :date, :done, :request_form_id, :time, :title
end
