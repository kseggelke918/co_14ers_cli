# remove these requires once scraping is complete 
# https://www.14ers.com/ - main page 
require "bundler/setup"
require "co_14ers"

class Co14ers::Scraper 
  
  @@main_webpage = "https://www.14ers.com/"
  
  def self.get_main_page
    Nokogiri::HTML(open(@@main_webpage)) 
  end 

  def self.scrape_main_page 
    url = get_main_page.css("table.data_box4 td a")  
    second_page_urls = []
    url.each do |site| 
      # peak = Co14ers::Mountain.new_from_website(site.text)
      second_page_urls << @@main_webpage + site.attribute("href").value 
    end 
    second_page_urls
  end 
  
  def self.scrape_second_page
    console_page_urls = []
    scrape_main_page.each do |site|
      second_page = Nokogiri::HTML(open(site))
      url = second_page.css("div.sidebar_content ul.sectionlist li")[8].children
      url.each do |console_site|
        console_page_urls <<@@main_webpage + console_site.attribute("href").value
      end 
    end 
    console_page_urls
  end 
  
  def self.peak_attributes
 
    scrape_second_page.each do |site|
      console = Nokogiri::HTML(open(site))
      binding.pry 
      console.css()
      # range = 
      # elevation = 
      # elevation_gain = 
      # trip_length = 
      # difficulty = 
    end
  end
end 

 Co14ers::Scraper.peak_attributes 
 

#   def self.scrape_from_main_page_peak_list
#     main_page = self. scrape_main_page
#     peaks = []
    
#     peak_names = main_page.css("table.data_box4 td a")
#     peak_names.each_with_index do |peak, index|
#       text = "#{index+1}. #{peak.text}"
#       peaks << text 
#     end 
#     peaks.join(" ")
#   end 


#   # peak_names.each do |peak|
#   #   puts peak.text.gsub(/[0-9,']/,"").strip  
#   # end