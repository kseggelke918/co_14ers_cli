# remove these requires once scraping is complete 

require "bundler/setup"
require "co_14ers"


class Co14ers::Scraper 


# https://www.14ers.com/ - main page 


  def self.scrape_from_main_page_headers(url)
    main_page = Nokogiri::HTML(open(url))
    mountain_ranges = []
    
    range_headers = main_page.css("table.data_box4 th span") 
    range_headers.each_with_index do |range, index|
      text = "#{index+1}. #{range.text}"
      mountain_ranges << text 
       
    end 
  end 


  def self.scraper_from_main_page_peak_list(url)
    main_page = Nokogiri::HTML(open(url))
    peaks = []
    
    peak_names = main_page.css("table.data_box4 td a")
    peak_names.each_with_index do |peak, index|
      text = "#{index+1}. #{peak.text}"
      peaks << text 
       
    end 
    binding.pry
  end 
end 
  Co14ers::Scraper.scraper_from_main_page_peak_list("https://www.14ers.com/")