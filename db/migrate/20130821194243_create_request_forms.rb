# These fields are all integers representing the id of the request_field its associated with
class CreateRequestForms < ActiveRecord::Migration
  def change
    create_table :request_forms do |t|
      t.integer :engine_oil_change
      t.integer :gear_oil_change
      t.integer :check_spark_plug
      t.integer :valve_adjustment
      t.integer :check_oil_screen
      t.integer :tighten_rear_brake
      t.integer :change_spark_plug
      t.integer :check_air_filter
      t.integer :new_fuel_filter
      t.integer :new_transmission_belt
      t.integer :new_transmission_weights
      t.integer :clean_clutches
      t.integer :new_rear_brake
      t.integer :replace_brake_fluild
      t.integer :grease_front_axel
      t.integer :stator
      t.integer :CDI
      t.integer :coil
      t.integer :spark
      t.integer :regulator
      t.integer :solenoid
      t.integer :gauges
      t.integer :wires
      t.integer :carb
      t.integer :fuel_line
      t.integer :jets
      t.integer :choke
      t.integer :fuel_filter
      t.integer :fuel_pump
      t.integer :light_bulb
      t.integer :body_panels
      t.integer :oil
      t.integer :chemicals
      t.integer :other1
      t.integer :other2
      t.integer :other3
      t.integer :other4

      t.timestamps
    end
  end
end
