class RequestForm
  
  ## I AM NOT USING THIS CLASS ANYWHRE CURRENTLY
  
  # This class holds all of the attributres detailed on a service request form
  # A RequestForm object will be created at the same time as a ServiceRequest
  # The fields of this object will be editable by admins when a particular service request is loaded
   attr_accessor :engine_oil_change,
     :gear_oil_change,
     :check_spark_plug,
     :valve_adjustment,
     :check_oil_screen,
     :tighten_rear_brake,
     :change_spark_plug,
     :check_air_filter,
     :new_fuel_filter,
     :new_transmission_belt,
     :new_transmission_weights,
     :clean_clutches,
     :new_rear_brake,
     :replace_brake_fluid,
     :grease_front_axel,
     #the following attributes will only use the check field and notes field (no date and time field)
     
     #Electrical Parts
     :stator,
     :CDI,
     :coil,
     :spark,
     :regulator,
     :solenoid,
     :gauges,
     :wires,
     
     #Fuel/Air Parts
     :carb,
     :fuel_line,
     :jets,
     :choke,
     :fuel_filter,
     :fuel_pump,
     
     #Engine, Misc, and Other
     :light_bulb,
     :body_panels,
     :oil,
     :chemicals,
     :other1,
     :other2,
     :other3,
     :other4
   
     # Initializes all of these request_fields to unchecked and blank strings.
     # This is how an empty/blank form is represented
   def initialize()
     self.instance_variables.each do |var|
       send("#{self.instance_variable_get(var)}=", RequestField.new(false,"","",""))
     end
   end
   
end