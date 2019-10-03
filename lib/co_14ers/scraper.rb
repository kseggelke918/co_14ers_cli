# remove these requires once scraping is complete 

require "bundler/setup"
require "co_14ers"


class Co14ers::Scraper 


# https://www.14ers.com/ - main page 


  def self.scrape_from_main_page(url)
    binding.pry
    main_page = Nokogiri::HTML(open(url))
    mountains = []
    
    main_page.css("table.data_box4 tbody tr th tr td a") do |peak|
      binding.pry 
    end 
  end 
end
  Co14ers::Scraper.scrape_from_main_page("https://www.14ers.com/")