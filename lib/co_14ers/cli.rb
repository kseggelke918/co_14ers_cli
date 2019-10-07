class Co14ers::CLI

  def call 
    puts "For a list of Colorado 14ers, please type 'list'. To exit, please type 'exit'"
    mountains 
  end 

  def mountains 
    user_input = gets.chomp.downcase 
    if user_input == "list"
      peak_names
      mountain_information
    elsif user_input == "exit"
      puts "Thank you, come again!"
    else 
      puts "That was an invalid selection, please type 'list' for a list of Colorado 14ers or 'exit' to exit the program."
      mountains  
      end 
  end 

  def peak_names
    Co14ers::Scraper.scrape_peak_names
  end 
 
 def mountain_information
   puts "For more information about a mountain, please type the name of that mountain:"
    input = gets.chomp.downcase 
    Co14ers::Mountain.mountain_info(input)
    
 end 
 
  
end 
 	
 



