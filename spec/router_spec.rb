require 'spec_helper'
require 'fillup'

describe "the router" do
  
  def app
    Sinatra::Application
  end
    
  it 'can return an existing fillup' do
    Factory(:fillup)
    get '/'
    last_response.should be_ok
  end
    
end

