class Co14ers::Mountain
  attr_accessor :name, :range, :elevation, :elevation_gain, :name_history, :difficulty, :trip_length
  
  # need list of peak objects that contain the attributes: peak.name, peak.range, peak.elevation, peak.elevation_gain, peak.name_history, peak.difficulty, peak.trip_length 
  @@all = []
  
  def initialize(url, name=nil, range=nil, name_history=nil, elevation=nil, elevation_gain=nil, difficulty=nil, trip_length=nil)
    @name = name
    @range = range 
    @name_history = name_history
    @elevation_gain = elevation_gain
    @elevation = elevation
    @difficulty = difficulty
    @trip_length = trip_length
    save 
  end 
  
  def self.new_from_console
    self.new(url)
  end 

  def save 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 


  def self.find_range(input)
    self.all.collect do |peak|
    if peak.range == input 
      peak 
    end 
  end 
      
  end 
  
  def self.mountain_info(input)
    self.all.each do |peak|
      if peak.name == input 
        puts "Test name:"
        puts "Test Range"
        # puts "Name: #{peak.name}"
        # puts "Range: #{peak.range}"
        # puts "Name History: #{peak.name_history}"
        # puts "Elevation Gain: #{peak.elevation_gain}"
        # puts "Elevation: #{peak.elevation}"
        # puts "Difficulty Level: #{peak.difficulty}"
        # puts "Trip Length: #{peak.trip_length}"
      end 
    end 
  end 
  
  def self.ranges
    # Co14ers::Scraper.scrape_from_main_page_headers
    # scrape this informaiton from the main page of the website
    puts "1. Front Range"  
    puts "2. Tenmile Range"
    puts "3. Mosquito Range"
    puts "4. Sawatch Range"
    puts "5. Elk Mountains"
    puts "6. San Juan Mountains"
    puts "7. Sangre de Cristo Range"  
  end 
  


#scaper class - grabbing info only and instantiate new mountain objects in the scraper class 
#mountain class will be a model for what each mountain object will look like 



end 