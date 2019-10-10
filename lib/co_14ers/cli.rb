class Co14ers::CLI

  def call 
    puts "For a list of Colorado 14ers, please type 'list'. At an time, type 'exit', to exit the program."
    user_input = gets.chomp.downcase
    if user_input == "exit"
      puts "Thank you, come again!"
    elsif user_input == "list"
      mountains
    else 
      puts "---------------------------------------------------------------------------------"
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
      puts "---------------------------------------------------------------------------------"
  end 

  def mountain_information
    puts "For a link to obtain information about a specific mountain, please type the name of that mountain:"
    Co14ers::Scraper.scrape
    input = gets.chomp.downcase
    found = Co14ers::Scraper.scrape_peak_names.detect {|name| name.downcase == input}
    if found  
      Co14ers::Mountain.mountain_info(input) 
      puts "Would you like information on another mountain? Please type 'yes' or if you want to view the list of 14ers, please type 'list'."
      further_info_input = gets.chomp.downcase
        if further_info_input == "yes"
          puts "---------------------------------------------------------------------------------"
          mountain_information
        elsif further_info_input == "list"
          mountains 
        elsif further_info_input == "exit"
          puts "Thank you!"
        else 
          puts "---------------------------------------------------------------------------------"
          puts "That was an invalid response."
          mountain_information
        end 
    elsif input == "exit"
      puts "Thank you, come again!"  
    else 
      puts "---------------------------------------------------------------------------------"
      puts "That was an invalid input."
      mountain_information
    end 
 end 
end 
 	
 



