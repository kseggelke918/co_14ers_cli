class Co14ers::Scraper 
@@main_webpage = "https://www.14ers.com/"


  def self.scrape 
    second_page_urls = []
    get_main_page = Nokogiri::HTML(open(@@main_webpage)) 
    data = get_main_page.css("table.data_box4 td a") 
    data.each do |peak|
      name = peak.text  
      site = @@main_webpage + peak.attribute("href").value
          Co14ers::Mountain.new_from_website(name, site) 
    end 
  end 
  
  def self.scrape_peak_names
    get_main_page = Nokogiri::HTML(open(@@main_webpage))
    peak_names = get_main_page.css("table.data_box4 td a")
    peak_names.collect do |peak|
      peak.text
    end 
  end 
 
end 
