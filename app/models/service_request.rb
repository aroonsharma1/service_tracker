# == Schema Information
#
# Table name: service_requests
#
#  id          :integer          not null, primary key
#  description :string(255)
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ServiceRequest < ActiveRecord::Base
  attr_accessible :description, :status
  validates :description, presence: true
  #Test that the status is non blank and only has values 1, 2, or 3
  validates :status, presence: true, inclusion: {in: [1, 2, 3], 
                                                 message: "%{value} is not a valid status. Must be 1, 2, or 3" }
end