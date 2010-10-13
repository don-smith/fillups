def Factory(type)
  case type
    when :fillup
      return create_fillup
  end
end

def create_fillup
  Fillup.create!(:vehicle_name => 'Jeep',
                 :location => 'Snohomish 76',
                 :odometer => 12345,
                 :gallons => 14.987,
                 :date => Date.new,
                 :rate => 3.012)
end


