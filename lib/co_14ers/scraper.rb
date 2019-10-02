

class Scraper 


# https://www.14ers.com/ - main page 


  def self.scrape_from_main_page(url)

    main_page = Nokogiri::HTML(open(url))
    mountains = []
    
    main_page.css(table.data_box4 tbody tr th tr td a) do |peak|
      binding.pry 
    end 
    
  end 
  





end
  Scraper.scrape_from_main_page("https://www.14ers.com/")