class RequestForm < ActiveRecord::Base
  has_many :request_fields
  belongs_to :service_request
  attr_accessible :CDI, :body_panels, :carb, :change_spark_plug, :check_air_filter, :check_oil_screen, :check_spark_plug, :chemicals, :choke, :clean_clutches, :coil, :engine_oil_change, :fuel_filter, :fuel_line, :fuel_pump, :gauges, :gear_oil_change, :grease_front_axel, :jets, :light_bulb, :new_fuel_filter, :new_rear_brake, :new_transmission_belt, :new_transmission_weights, :oil, :other1, :other2, :other3, :other4, :regulator, :replace_brake_fluild, :solenoid, :spark, :stator, :tighten_rear_brake, :valve_adjustment, :wires
end
