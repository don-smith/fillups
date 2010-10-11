require 'spec_helper'

describe "the router" do
  include Rack::Test::Methods
  
  def app
    Sinatra::Application
  end
  
  it 'can return an existing fillup' do
    get '/'
    last_response.should be_ok
    last_response.body.should == "so far, so good"
  end
    
end

