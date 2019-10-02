class Co14ers::CLI

  def call 
    ranges
    
  end 

  def ranges
    puts "For a list of Colorado 14ers, please type 'list'. To exit, please type 'exit'"
    user_input = gets.chomp 
    
    until user_input == "exit"
      if user_input == "list"
        list
      end 
      peak_names
    end 

  end 
  
  def list 
    puts "1. Front Range"  
    puts "2. Tenmile Range"
    puts "3. Mosquito Range"
    puts "4. Sawatch Range"
    puts "5. Elk Mountains"
    puts "6. San Juan Mountains"
    puts "7. Sangre de Cristo Range"
  end 
  
  def peak_names
    puts "For a list of peaks in a range, enter the corresponding number:"
    range_input = gets.chomp 
    if range_input == "1"
      puts "Grays Peak"
      puts "Torreys Peak"
      puts "Mt. Evans"
      puts "Longs Peak"
      puts "Piles Peak"
      puts "Mt. Bierdstadt"
    elsif range_input == "2"
      puts "Quandary Peak"  
    elsif range_input == "3"
      puts "Mt. Lincoln"
      puts "Mt. Cameron"
      puts "Mt. Bross"
      puts "Mt. Democrat"
      puts "Mt. Sherman"
    elsif range_input == "4"
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
    elsif range_input == "5"
      puts "Castle Peak"
      puts "Maroon Peak"
      puts "Capital Peak"
      puts "Snowmass Mountain"
      puts "Conundrum Peak"
      puts "Pyramid Peak"
      puts "North Maroon Peak"
    elsif range_input == "6"
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
    elsif range_input == "7"
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
      puts "Please enter a valid number."
    end 
  end 
  
end 
 	




