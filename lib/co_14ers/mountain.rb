class Co14ers::Mountain
  attr_accessor :name, :range, :elevation, :elevation_gain, :name_history, :difficulty, :trip_length
  
  def initialize(name)
    @name = name 
  end 

  def create_from_website(site)
     @name = site 
  end 
  
  
  
  
  
  
  # def initialize(name, range, elevation, elevation_gain, name_history, difficulty, trip_length)
  #   @name = name 
  #   @range = range 
  #   @elevation = elevation
  #   @elevation_gain = elevation_gain
  #   @name_history = name_history
  #   @difficulty = difficulty
  #   @trip_length = trip_length
    
  # end 

#scaper class - grabbing info only and instantiate new mountain objects in the scraper class 
#mountain class will be a model for what each mountain object will look like 




# peak.name
# peak.range 
# peak.elevation 
# peak.elevation_gain
# peak.name_history 
# peak.difficulty 
# peak.trip_length

end 