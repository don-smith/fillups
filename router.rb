require 'fillup'

get '/' do
  "homepage"
end

get '/fillups' do
  Fillup.all().to_json
end

get '/fillups/:id' do
  Fillup.all(:conditions => {:id => params[:id]}).to_json
end

