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
  
  def self.mountain_info(input)
    self.all.each do |peak|
      if peak.name == input 
        puts "Name: #{peak.name}"
        puts "URL: #{peak.url}"
      end 
    end 
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