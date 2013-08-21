module ServiceRequestsHelper
  
  def compute_serv_num(service_request)
    #Generate service request number from time and id in database
    id = service_request.id
    time = Time.now # create a time object
    hour = time.hour
    hourS = hour.to_s  #string variable representation of hour
    if hour < 10
      hourS = "0"  + hour.to_s
    end
  
    min = time.min
    minS = min.to_s
    if min < 10
      minS = "0" + min.to_s
    end
    # creates string of form id#|hour|min, then converts this to an integer
    serv = (id.to_s + hourS + minS).to_i
    return serv
  end
  
  def initialize_request_form(service_request) # This method has no checks right now incase save fails.
    
    formToAdd = RequestForm.new
    formToAdd.service_request_id = service_request.id
    formToAdd.save
    
    tmpRequestField = RequestField.new
    tmpRequestField.done = false
    tmpRequestField.request_form_id = formToAdd.id
    tmpRequestField.save
    
    formToAdd.engine_oil_change = tmpRequestField.id
    
    #eventually OUTSIDE the loop
    formToAdd.save
    
  end
  
end
