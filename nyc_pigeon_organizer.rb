def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  
  #step 1 strip the names out of :gender
  # & push as string keys on a new hash 
  # with sub-hash { color:nil, gender:nil, lives:nil}
  pigeon_name_array = pigeon_data[:gender].values.flatten
  pigeon_color_array = pigeon_data[:color].keys #.map{|symbol| symbol.to_s}
  pigeon_gender_array = pigeon_data[:gender].keys.map{|symbol| symbol.to_s}
  pigeon_lives_array = pigeon_data[:lives].keys
  
  pigeon_list = pigeon_name_array.map do |name| 
    name => {
      :color => pigeon_color_array.each {|symbol|
                if(pigeon_data[:color][symbol].bsearch{|x| x == name})
                  symbol.to_s
                end
      },
      :gender => pigeon_gender_array,
      :lives => [""]
    }
  end
  
  #step 2 for each name in the new hash
  # cycle through the old data and push
  # data for color gender & lives into the new hash
  pigeon_list.each
  
end
