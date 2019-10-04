# remove these requires once scraping is complete 

require "bundler/setup"
require "co_14ers"

class Co14ers::Scraper 
  attr_accessor :name, :elevation, :mountain 
# https://www.14ers.com/ - main page 


  def self.scrape_main_page 
   Nokogiri::HTML(open("https://www.14ers.com/"))  
  end 
  
  def self.scrape_from_main_page_headers
    main_page = self.scrape_main_page 
    mountain_ranges = []
    
    range_headers = main_page.css("table.data_box4 th span") 
    range_headers.each_with_index do |range, index|
      text = "#{index+1}. #{range.text}"
      mountain_ranges << text  
    end 

    mountain_ranges.join(" ")
  end 

  def self.scrape_main_page_url
    main_page = self.scrape_main_page
    #binding.pry 
    #url = main_page.css("div.csspopup li a").attribute("href") 
    
    
    #Co14ers::Moutain.new_from_console(url, name)
    
    
    
  end 


  def self.scrape_from_main_page_peak_list
    main_page = self. scrape_main_page
    peaks = []
    
    peak_names = main_page.css("table.data_box4 td a")
    peak_names.each_with_index do |peak, index|
      text = "#{index+1}. #{peak.text}"
      peaks << text 
    end 
    peaks.join(" ")
  end 

  def self.scrap_console(url)
    # peak_planning_console = Nokogiri::HTML(open(url))
    # peak = Co14ers::Moutain.new_from_console(peak.name, peak.range, peak.name_history, peak.elevation, peak.elevation_gain, peak.difficulty, peak.trip_length)  
    # peak.name = 
    # peak.range = 
    # peak.name_history = 
    # peak.elevation = 
    # peak.elevation_gain = 
    # peak.difficulty = 
    # peak.trip_length = 
  end 
end 
   Co14ers::Scraper.scrape_main_page_url


  # peak_names.each do |peak|
  #   puts peak.text.gsub(/[0-9,']/,"").strip  
  # end