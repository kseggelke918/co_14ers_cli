class Co14ers::Mountain
  attr_accessor :name

  
  @@all = []
  
  def initialize(name, url)
    @name = name
    @url = url 
    save 
  end 
  
  def url 
    second_page = Nokogiri::HTML(open(@url))
    cosole_url = second_page.css("div.sidebar_content ul.sectionlist li")[8].children
    binding.pry 
    cosole_url.each do |console_site|
      console_url = "https://www.14ers.com/" + console_site.attribute("href").value
    end 
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
          # binding.pry 
    self.all.each do |peak|

      if peak.name.downcase == input
        # binding.pry 
        puts "Name: #{peak.name}"
        puts "For more information, please visit #{peak.url}"
      else 
        puts "That was an invalid selection, please type the name of the mountain you wish to receive information about."
      end 
    end 
  end 
  
end 

test = Co14ers::Mountain.new(test, "https://www.14ers.com/photos/peakmain.php?peak=Longs+Peak")
test.url 
