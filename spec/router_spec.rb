require 'spec_helper'
require 'fillup'

describe "the router" do
  
  def app
    Sinatra::Application
  end
  
  it 'can get to the main page' do
    get '/'
    last_response.should be_ok
  end
  
  it 'can return all fillups' do
    Factory(:fillup)
    get '/fillups'
    last_response.should be_ok
  end
    
  it 'can return an existing fillup' do
    fillup = Factory(:fillup)
    get "/fillups/#{fillup.id}"
    last_response.should be_ok
  end
    
end

