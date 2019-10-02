class Scraper 
  attr_reader :name, :range, :elevation:, :elevation_gain, :name_history, :difficulty, :trip_length
  
  def initialize(name, range, elevation, elevation_gain, name_history, difficulty, trip_length)
    @name = name 
    @range = range 
    @elevation = elevation
    @elevation_gain = elevation_gain
    @name_history = name_history
    @difficulty = difficulty
    @trip_length = trip_length
    
  end 

end
