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
      peak_names
      mountain_information
  end 

  def peak_names
    Co14ers::Scraper.scrape_peak_names
  end 

  def mountain_information
    puts "For more information about a mountain, please type the name of that mountain:"
    Co14ers::Scraper.scrape
    input = gets.chomp.downcase
    if peak_names.text.downcase.include?(input) 
      Co14ers::Mountain.mountain_info(input) 
    elsif input == "exit"
      puts "Thank you, come again!"  
    else 
      puts "That was an invalid input."
      mountain_information 
    end 

 end 
 
  
end 
 	
 



