require "#{Rails.root}/app/helpers/service_requests_helper"
include ServiceRequestsHelper

namespace :db do
  desc "Fill database with sample service requests"
  task populate: :environment do
    service_request = ServiceRequest.create!(description: "The scooter is broken!",
                 status: 1,
                 customer_first_name: "foo",
                 customer_last_name: "foobar", 
                 customer_email: "example@fake.com")
                
    serv = compute_serv_num(service_request)
    service_request.update_attributes(service_request_number: serv)             
                 
    99.times do |n|
      description = Lorem::Base.new('words', 10).output
      status = 1
      customer_first_name = "Foo"
      customer_last_name = "Bar"
      customer_email = "example#{n+1}@fake.com"
      service_request = ServiceRequest.create!(description: description,
                   status: status,
                   customer_first_name: customer_first_name,
                   customer_last_name: customer_last_name,
                   customer_email: customer_email)
                   
      serv = compute_serv_num(service_request)
      service_request.update_attributes(service_request_number: serv)                       
    end
  end
end