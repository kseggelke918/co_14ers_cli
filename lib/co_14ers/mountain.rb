module Co14ers
  class Mountain
    attr_accessor :name

    @@all = []
  
    def initialize(name, url)
      @name = name
      @url = url 
      save 
    end 
  
    def url 
      second_page = Nokogiri::HTML(open(@url))
      console_url = second_page.css("div.sidebar_content ul.sectionlist li")[8].children
      console_url.each do |console_site|
        return console_url = "https://www.14ers.com/" + console_site.attribute("href").value
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
      puts "--------------------------------------------------------------------------------"
      peak = self.all.detect {|p| p.name.downcase == input}  
        puts "For more information about #{peak.name}, please visit #{peak.url}."
        puts "--------------------------------------------------------------------------------"
    end 
  
  end 
end 
