require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  
  #Good Grief.  I spun my wheels on this for more than a week.
  #After reading about stuff online it looks like maybe I needed
  #to splat arrays back into the hash to build it the way
  #I thought made sense, but I couldn't get that working either.  
  #Implementing the solution from youtube :(
  
  pigeon_data.each_with_object({}) do |(key,value), pigeon_list|
      
    value.each do |to_data, names|
      names.each do |name|
        #binding.pry
        if !pigeon_list[name]
          pigeon_list[name]={}
        end
        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end
      binding.pry        
      pigeon_list[name][key].push(to_data)
      #binding.pry
      end
      
    end
  end
  pigeon_list
end
