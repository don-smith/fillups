require File.join(File.dirname(__FILE__), '..', 'spec_helper')
require 'fillup'

describe Fillup do
  
  it 'has required fields' do
    fillup = Fillup.new
    fillup.should respond_to(:vehicle_name)
    fillup.should respond_to(:location)
    fillup.should respond_to(:odometer)
    fillup.should respond_to(:gallons)
    fillup.should respond_to(:date)
    fillup.should respond_to(:rate)
  end
  
  it 'can be saved' do
    fillup = Fillup.new(
      :vehicle_name => 'Jeep',
      :location => 'Snohomish 76',
      :odometer => 97657,
      :gallons => 15.679,
      :date => Date.new(2010, 10, 10).to_s,
      :rate => 2.983)
    fillup.save
  end
  
end