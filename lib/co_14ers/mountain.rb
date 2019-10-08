# delete after testing
require "nokogiri"
require "open-uri"
require "pry"

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
    self.all.find do |peak|
      peak.name.downcase == input
        puts "Name: #{peak.name}"
        puts "For more information, please visit #{peak.url}"
      # else 
      #   puts "That was an invalid selection, please type the name of the mountain you wish to receive information about."
      # end 
    end 
  end 
end 
  
end 
