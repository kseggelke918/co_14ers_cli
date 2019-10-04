class Co14ers::CLI
  #make each mountain an object so we can do things like front_range.peaks and Grays.elevation 

  def call 
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
     

    @range_input = gets.chomp.downcase 
    # Co14ers::Mountain.find_range(range_input)  
    if @range_input == "1"
      puts "1. Grays Peak"
      puts "2. Torreys Peak"
      puts "3. Mt. Evans"
      puts "4. Longs Peak"
      puts "5. Piles Peak"
      puts "6. Mt. Bierdstadt"
    elsif @range_input == "2"
      puts "1. Quandary Peak"  
    elsif @range_input == "3"
      puts "1. Mt. Lincoln"
      puts "2. Mt. Cameron"
      puts "3. Mt. Bross"
      puts "4. Mt. Democrat"
      puts "5. Mt. Sherman"
    elsif @range_input == "4"
      puts "Mt. Elbert"
      puts "Mt. Massive"
      puts "Mt. Harvard" 
      puts "La Plata Peak"
      puts "Mt. Antero"
      puts "Mt. Shavano"
      puts "Mt. Princeton"
      puts "Mt. Belford"
      puts "Mt. Yale"
      puts "Tabeguache Peak"
      puts "Mt. Oxford"
      puts "Mt. Columbia"
      puts "Missouri Mountain"
      puts "Mt. of the Holy Cross"
      puts "Huron Peak"
    elsif @range_input == "5"
      puts "Castle Peak"
      puts "Maroon Peak"
      puts "Capital Peak"
      puts "Snowmass Mountain"
      puts "Conundrum Peak"
      puts "Pyramid Peak"
      puts "North Maroon Peak"
    elsif @range_input == "6"
      puts "Uncompahgre Peak"
      puts "Mt. Wilson"
      puts "El Diente Peak"
      puts "Mt. Sneffels"
      puts "Windom Peak"
      puts "Mt. Eolus"
      puts "Sunlight Peak"
      puts "Handies Peak"
      puts "North Eolus"
      puts "Redcloud Peak"
      puts "Wilson Peak"
      puts "Wetterhorn Peak"
      puts "San Luis Peak"
      puts "Sunshine Peak"
    elsif @range_input == "7"
      puts "Blana Peak"
      puts "Crestone Peak"
      puts "Crestone Needle"
      puts "Kit Carson Peak"
      puts "Challenger Point"
      puts "Humboldt Peak"
      puts "Culebra Peak"
      puts "Mt. Lindsey"
      puts "Ellingwood Point"
      puts "Little Bear Peak"
    else 
      puts "Please enter a valid range."
    end 
  end 
 
 def mountain_information
   puts "For information on a specific mountain, please enter the name of the mountain:"
   mountain_info_input = gets.chomp.downcase 
   # Co14ers::Mountain.mountain_info(mountain_info_input) 
   if @range_input == "1"
     if mountain_info_input == "1" #Grays peak 
        puts "elevation @ summit = 14,270"
        puts "elevation gain: 3000ft"
        puts "most recent conditions: yada yada yada"
        puts "name history: history of peak name"
        puts "difficulty (standard route): class 1"
        puts "trip length: 8 miles"
      elsif mountain_info_input == "2" #Torreys
        puts "elevation at summit: 14,267"
        puts "elevation gain: 3000ft"
        puts "most recent conditions: torrys conditions"
        puts "name history: history of torreys peak name"
        puts "difficulty: class 2"
        puts "trip length: 8 miles"
      end 
    elsif @range_input == "2"
      if mountain_info_input == "1"
        puts "elevation @ summit: Quandary"
        puts "elevation gain: Quandary"
        puts "most recent conditions: Quandary"
        puts "name history: Quandary"
        puts "difficulty: Quandary"
        puts "trip length: Quandary"
      end 
    elsif @range_input == "3"
      if mountain_info_input == "1"
        puts "elevation @ summit: Mt.Lincoln"
        puts "elevation gain: Mt.Lincoln"
        puts "most recent conditions: Mt.Lincoln"
        puts "name history: Mt.Lincoln"
        puts "difficulty: Mt.Lincoln"
        puts "trip length: Mt.Lincoln"
      elsif mountain_info_input == "2"
        puts "elevation @ summit: Mt.Cameron"
        puts "elevation gain: Mt.Cameron"
        puts "most recent conditions: Mt.Cameron"
        puts "name history: Mt.Cameron"
        puts "difficulty: Mt.Cameron"
        puts "trip length: Mt.Cameron"
      end 
    else 
      puts "That was an invalid entry"
     
   end 
 end 
 
  
end 
 	




