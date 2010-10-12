require 'spec_helper'
require 'fillup'

describe "the router" do
  
  def app
    Sinatra::Application
  end
  
  def create_fillup
    Fillup.create!(:vehicle_name => 'Jeep',
                   :location => 'Snohomish 76',
                   :odometer => 12345,
                   :gallons => 14.987,
                   :date => Date.new,
                   :rate => 3.012)
  end
  
  it 'can return an existing fillup' do
    create_fillup
    get '/'
    last_response.should be_ok
    # last_response.body.should == "so far, so good"
  end
    
end

