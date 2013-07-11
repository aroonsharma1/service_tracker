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

require 'spec_helper'

describe ServiceRequest do
  pending "add some examples to (or delete) #{__FILE__}"
end
