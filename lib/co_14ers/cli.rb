class Co14ers::CLI

  def call 
    ranges
    
  end 

  def ranges
    puts "For a list of Colorado 14ers, please type 'list'"
    user_input = gets.chomp 
    
    if user_input == "list"
      list
    # else 
    #   puts "For a list of Colorado 14ers, please type 'list'"
    #   user_input = gets.chomp 
    end 
    peak_names

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
    else 
      puts "Please enter a valid number."
    end 
  end 
  
end 
	

 
# Mosquito Range
 	
# Mt. Lincoln
# 14,286'	
 
 	
# Mt. Cameron
# 14,238'	
 
 	
# Mt. Bross
# 14,172'	
 
 	
# Mt. Democrat
# 14,148'	
 
 	
# Mt. Sherman
# 14,036'	
 
# Sawatch Range
 	
# Mt. Elbert
# 14,433'	
 
 	
# Mt. Massive
# 14,421'	
 
 	
# Mt. Harvard
# 14,420'	
 
 	
# La Plata Peak
# 14,336'	
 
 	
# Mt. Antero
# 14,269'	
 
 	
# Mt. Shavano
# 14,229'	
 
 	
# Mt. Princeton
# 14,197'	
 
 	
# Mt. Belford
# 14,197'	
 
 	
# Mt. Yale
# 14,196'	
 
 	
# Tabeguache Peak
# 14,155'	
 
 	
# Mt. Oxford
# 14,153'	
 
 	
# Mt. Columbia
# 14,073'	
 
 	
# Missouri Mountain
# 14,067'	
 
 	
# Mt. of the Holy Cross
# 14,005'	
 
 	
# Huron Peak
# 14,003'	
 
# Elk Mountains
 	
# Castle Peak
# 14,265'	
 
 	
# Maroon Peak
# 14,156'	
 
 	
# Capitol Peak
# 14,130'	
 
 	
# Snowmass Mountain
# 14,092'	
 
 	
# Conundrum Peak
# 14,060'	
 
 	
# Pyramid Peak
# 14,018'	
 
 	
# North Maroon Peak
# 14,014'	
 
# San Juan Mountains
 	
# Uncompahgre Peak
# 14,309'	
 
 	
# Mt. Wilson
# 14,246'	
 
 	
# El Diente Peak
# 14,159'	
 
 	
# Mt. Sneffels
# 14,150'	
 
 	
# Windom Peak
# 14,087'	
 
 	
# Mt. Eolus
# 14,083'	
 
 	
# Sunlight Peak
# 14,059'	
 
 	
# Handies Peak
# 14,048'	
 
 	
# North Eolus
# 14,039'	
 
 	
# Redcloud Peak
# 14,034'	
 
 	
# Wilson Peak
# 14,017'	
 
 	
# Wetterhorn Peak
# 14,015'	
 
 	
# San Luis Peak
# 14,014'	
 
 	
# Sunshine Peak
# 14,001'	
 
# Sangre de Cristo Range
 	
# Blanca Peak
# 14,345'	
 
 	
# Crestone Peak
# 14,294'	
 
 	
# Crestone Needle
# 14,197'	
 
 	
# Kit Carson Peak
# 14,165'	
 
 	
# Challenger Point
# 14,081'	
 
 	
# Humboldt Peak
# 14,064'	
 
 	
# Culebra Peak
# 14,047'	
 
 	
# Mt. Lindsey
# 14,042'	
 
 	
# Ellingwood Point
# 14,042'	
 
 	
# Little Bear Peak
# 14,037'




