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
      binding.pry 
      if peak.name.downcase == input 
        puts "Name: #{peak.name}"
        puts "For more information, please visit #{peak.url}"
      else 
        puts "That was an invalid selection, please type the name of the mountain you wish to receive information about."
      end 
    end 
  end 
  
end 