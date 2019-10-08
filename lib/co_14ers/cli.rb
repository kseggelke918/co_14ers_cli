class Co14ers::CLI

  def call 
    puts "For a list of Colorado 14ers, please type 'list'. To exit, please type 'exit'"
    user_input = gets.chomp.downcase
    if user_input == "exit"
      puts "Thank you, come again!"
    elsif user_input == "list"
      mountains
    else 
      puts "That was an invalid selection."  
      call 
    end 
  end 

  def mountains 
      print_peak_names
      mountain_information
  end 

  def print_peak_names
    Co14ers::Scraper.scrape_peak_names.each_with_index do |peak, index|
      puts "#{index + 1}. #{peak}"
    end 
  end 

  def mountain_information
    puts "For a link to obtain information about a specific mountain, please type the name of that mountain:"
    Co14ers::Scraper.scrape
    input = gets.chomp.downcase
    found = Co14ers::Scraper.scrape_peak_names.detect {|name| name.downcase == input}
    if found  
      return Co14ers::Mountain.mountain_info(input) 
    elsif input == "exit"
      puts "Thank you, come again!"  
    else 
      puts "That was an invalid input."
      mountain_information 
    end 

 end 
 
 

  
end 
 	
 



