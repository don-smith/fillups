require 'fillup'

get '/' do
  Fillup.all().to_json
end
