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
  
end
