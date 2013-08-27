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
  
  def initialize_request_form(service_request)
    
    #Fields for the table
    service_request.request_fields.create(:name => "Engine Oil Change", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Gear Oil Change", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Check Spark Plug", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Valve Adjustment", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Check/Replace Oil Screen", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Tighten Rear Brake", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Change spark plug", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Check/Replace Air Filter", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "New Fuel Filter", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "New Transmission Belt", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "New Transmission Weights", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Clean Front/Rear Clutches", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "New Rear Brake", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Replace Brake Fluid", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Grease Front Axel", :notes => "", :done => false, :date => "", :time => "")
    
    #Checkboxes
    #Electrical:
    service_request.request_fields.create(:name => "Stator:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "CDI:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Coil:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Spark:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Regulator:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Solenoid:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Gauges:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Wires:", :notes => "", :done => false, :date => "", :time => "")
    
    #Fuel/Air
    service_request.request_fields.create(:name => "Carb:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Fuel Line:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Jet(s):", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Choke:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Fuel Filter:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Fuel Pump:", :notes => "", :done => false, :date => "", :time => "")
    
    #Engine/Misc. & Other
    service_request.request_fields.create(:name => "Light Bulb(s):", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Body Panel(s):", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Oil:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Chemicals:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Other:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Other:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Other:", :notes => "", :done => false, :date => "", :time => "")
    service_request.request_fields.create(:name => "Other:", :notes => "", :done => false, :date => "", :time => "")
    
  end
  
end
