require "bundler/setup"
require "co_14ers"
require "pry"

class Co14ers::Scraper 
@@main_webpage = "https://www.14ers.com/"


  def self.scrape 
    second_page_urls = []
    get_main_page = Nokogiri::HTML(open(@@main_webpage)) 
    data = get_main_page.css("table.data_box4 td a") 
    data.each do |peak|
      name = peak.text  
      
      site = @@main_webpage + peak.attribute("href").value
      # second_page_urls.each do |site|
        # second_page = Nokogiri::HTML(open(site))
        # url = second_page.css("div.sidebar_content ul.sectionlist li")[8].children
        # url.each do |console_site|
        #   console_url = @@main_webpage + console_site.attribute("href").value
 
          Co14ers::Mountain.new_from_website(name, site) 
        # end 
      # end 
    end 
  end 
  
  def self.scrape_peak_names
    get_main_page = Nokogiri::HTML(open(@@main_webpage))
    peak_names = get_main_page.css("table.data_box4 td a")
    peak_names.each_with_index do |peak, index|
      puts "#{index + 1}. #{peak.text}"
    end 
  end 
  
 
end 
# Co14ers::Scraper.scrape_peak_names

 # def self.main_page
  #   second_page_urls = []
  #   get_main_page = Nokogiri::HTML(open(@@main_webpage)) 
  #   data = get_main_page.css("table.data_box4 td a") 
    
  #   data.each do |peak| 
  #     binding.pry 
  #     Co14ers::Mountain.new_from_website(peak.text)  
  #     second_page_urls << @@main_webpage + peak.attribute("href").value 
  #   end 
  #   second_page_urls
  # end 
  
  # def self.scrape_second_page
  #   console_page_urls = []
  #   main_page.each do |site|
  #     second_page = Nokogiri::HTML(open(site))
  #     url = second_page.css("div.sidebar_content ul.sectionlist li")[8].children

  #     url.each do |console_site|
  #       binding.pry 
  #       @peak_info[:console_url] = @@main_webpage + console_site.attribute("href").value
  #       console_page_urls <<@@main_webpage + console_site.attribute("href").value
  #     end 
  #   end 
  #   console_page_urls
  #   binding.pry 
  # end 


#   def self.scrape_main_page 
#     url = get_main_page.css("table.data_box4 td a")  
#     second_page_urls = []
#     peaks = []
#     url.each do |site| 
#       peak_info = {
#         :name => site.text 
#       }
#       second_page_urls << @@main_webpage + site.attribute("href").value 
#     end 
#     second_page_urls
#   end 
  
#   def self.scrape_second_page
#     console_page_urls = []
#     scrape_main_page.each do |site|
#       second_page = Nokogiri::HTML(open(site))
#       url = second_page.css("div.sidebar_content ul.sectionlist li")[8].children
#       url.each do |console_site|
#         peak_info[:url] = @@main_webpage + console_site.attribute("href").value
#         console_page_urls <<@@main_webpage + console_site.attribute("href").value
#       end 
#     end 
#     console_page_urls
#   end 
  
#   def self.peak_attributes
 
#     scrape_second_page.each do |site|
#       console = Nokogiri::HTML(open(site))
#       binding.pry 
#       console.css()
#       # peak_info[:range] = 
#       # peak_info[:elevation] = 
#       # peak_info[:elevation_gain] = 
#       # peak_info[:trip_length] = 
#       # peak_info[:difficulty] = 
#     end
#   end
# end 

# Co14ers::Scraper.peak_attributes 
 

# #   def self.scrape_from_main_page_peak_list
# #     main_page = self. scrape_main_page
# #     peaks = []
    
# #     peak_names = main_page.css("table.data_box4 td a")
# #     peak_names.each_with_index do |peak, index|
# #       text = "#{index+1}. #{peak.text}"
# #       peaks << text 
# #     end 
# #     peaks.join(" ")
# #   end 


# #   # peak_names.each do |peak|
# #   #   puts peak.text.gsub(/[0-9,']/,"").strip  
# #   # end