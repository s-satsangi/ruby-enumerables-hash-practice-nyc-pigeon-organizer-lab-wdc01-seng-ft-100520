require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  # write your code here!
  
  #Good Grief.  I spun my wheels on this for more than a week.
  #After reading about stuff online it looks like maybe I needed
  #to splat arrays back into the hash to build it the way
  #I thought made sense, but I couldn't get that working either.  
  #Implementing the solution from youtube :(
  
  pigeon_data.each_with_object({}) |(key,value) pigeon_list|
      
    value.each do |title, names|
    binding.pry  
    end
  end
  
end
