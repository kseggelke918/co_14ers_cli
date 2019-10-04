# remove these requires once scraping is complete 

require "bundler/setup"
require "co_14ers"

class Co14ers::Scraper 
  attr_accessor :name, :elevation, :mountain 
# https://www.14ers.com/ - main page 

  def self.scrape_from_main_page_headers
    main_page = Nokogiri::HTML(open("https://www.14ers.com/"))
    mountain_ranges = []
    
    range_headers = main_page.css("table.data_box4 th span") 
    range_headers.each_with_index do |range, index|
      text = "#{index+1}. #{range.text}"
      mountain_ranges << text  
    end 
    #binding.pry
    mountain_ranges
  end 

  def self.scraper_from_main_page_peak_list
    main_page = Nokogiri::HTML(open("https://www.14ers.com/"))
    peaks = []
    
    peak_names = main_page.css("table.data_box4 td a")
    peak_names.each_with_index do |peak, index|

      text = "#{index+1}. #{peak.text}"
      peaks << text 
    end 
    
  end 

  def self.scrap_console(url)

  end 
end 
  # Co14ers::Scraper.scrape_from_main_page_headers


  # peak_names.each do |peak|
  #   puts peak.text.gsub(/[0-9,']/,"").strip  
  # end