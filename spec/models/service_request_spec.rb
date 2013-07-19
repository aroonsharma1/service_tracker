# == Schema Information
#
# Table name: service_requests
#
#  id                     :integer          not null, primary key
#  description            :string(255)
#  status                 :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  service_request_number :integer
#  customer_first_name    :string(255)
#  customer_last_name     :string(255)
#  customer_email         :string(255)
#

require 'spec_helper'

describe ServiceRequest do
  pending "add some examples to (or delete) #{__FILE__}"
end
