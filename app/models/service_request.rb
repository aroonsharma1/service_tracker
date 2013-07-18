# == Schema Information
#
# Table name: service_requests
#
#  id          :integer          not null, primary key
#  description :string(255)
#  status      :integer
#  service_request_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ServiceRequest < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  before_save { |service_request| service_request.customer_email = customer_email.downcase }
  
  attr_accessible :description, :status, :service_request_number, :customer_first_name, 
                  :customer_last_name, :customer_email
  validates :customer_first_name, presence: true 
  validates :customer_last_name, presence: true
  validates :customer_email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :description, presence: true
  #Tests that the status is non blank and only has values 1, 2, or 3
  validates :status, presence: true, inclusion: {in: [1, 2, 3], 
                                                 message: "%{value} is not a valid status. Must be 1, 2, or 3" }
end
