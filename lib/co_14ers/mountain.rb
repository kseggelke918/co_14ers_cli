class Co14ers::Mountain
  attr_accessor :name, :url 
  
  @@all = []
  
  def initialize(name, url)
    @name = name
    @url = url 
    save 
  end 
  
  def self.new_from_website(name, url)
    self.new(name, url)
  end 

  def save 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def self.find_range(input)
    if input == "1"
      puts "1. Grays Peak"
      puts "2. Torreys Peak"
      puts "3. Mt. Evans"
      puts "4. Longs Peak"
    elsif input == "2"
      puts "1. Quandary Peak"  
    elsif input == "3"
      puts "1. Mt. Lincoln"
      puts "2. Mt. Cameron"
      puts "3. Mt. Bross"
    elsif input == "4"
      puts "Mt. Elbert"
      puts "Mt. Massive"
      puts "Mt. Harvard" 
    elsif input == "5"
      puts "Castle Peak"
      puts "Maroon Peak"
    elsif input == "6"
      puts "Uncompahgre Peak"
      puts "Mt. Wilson"
      puts "El Diente Peak"
    elsif input == "7"
      puts "Blana Peak"
      puts "Crestone Peak"
      puts "Crestone Needle"
    else 
      puts "Please enter a valid range."
    end 
    
    # self.all.collect do |peak|
    # if peak.range == input 
    #   peak 
    # end 
  # end 
      
  end 
  
  def self.mountain_info(input)
    puts "elevation @ summit = 14,270"
        puts "elevation gain: 3000ft"
        puts "most recent conditions: yada yada yada"
        puts "name history: history of peak name"
        puts "difficulty (standard route): class 1"
        puts "trip length: 8 miles"
    
    # self.all.each do |peak|
    #   if peak.name == input 
        # puts "Name: #{peak.name}"
        # puts "Range: #{peak.range}"
        # puts "Elevation Gain: #{peak.elevation_gain}"
        # puts "Elevation: #{peak.elevation}"
        # puts "Difficulty Level: #{peak.difficulty}"
        # puts "Trip Length: #{peak.trip_length}"
    #   end 
    # end 
  end 
  
  def self.ranges
    # self.all.each_with_index do |peak, index|
    #   while index <= self.all.length 
    #     puts "#{index+1}. #{peak.range.capitalize}" 
    #   end 
    # end 
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