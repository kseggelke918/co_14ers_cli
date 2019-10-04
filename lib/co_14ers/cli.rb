class Co14ers::CLI

  def call 
    # call scraper method(s)
    puts "For a list of Colorado 14ers, please type 'list'. To exit, please type 'exit'"
    ranges
  end 

  def ranges
    user_input = gets.chomp.downcase 
    if user_input == "list"
      range_list
      peak_names
      mountain_information
    elsif user_input == "exit"
      puts "Thank you, come again!"
    else 
      puts "That was an invalid selection, please type 'list' for a list of Colorado 14ers or 'exit' to exit the program."
      ranges 
      end 
  end 
  
  def range_list 
    @mountain_ranges = Co14ers::Mountain.ranges
  end 
  
  def peak_names
    puts "For a list of peaks in a range, enter the corresponding range:"
    range_input = gets.chomp.downcase 
    Co14ers::Mountain.find_range(range_input) 
  end 
 
 def mountain_information
   puts "For information on a specific mountain, please enter the name of the mountain:"
   mountain_info_input = gets.chomp.downcase 
   Co14ers::Mountain.mountain_info(mountain_info_input) 
 end 
 
  
end 
 	




