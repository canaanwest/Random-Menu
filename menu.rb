#Canaan's Random Menu Generator
#BASIC edition

description = ["spicy", "bland", "cajun-inspired", "breaded", "sticky", "moist", "home-grown", "savory", "sweet and sour", "cherry-topped"]
cooking_style = ["marinated", "fermented", "grilled", "pan-fried", "steamed", "roasted", "sautèed", "frozen", "tossed", "microwaved" ]
item = ["chicken", "broccoli", "pasta", "shrimp", "carrot cake", "cheese", "watermelon", "pizza", "tomato sauce", "cauliflower"]



# 10.times do |x|
#   puts "#{x+1}. #{description[Random.rand(0..9)]} #{cooking_style[Random.rand(0..9)]} #{item[Random.rand(0..9)]} "
# end


#Optional Enhancements:

#create a random number array for each
#for custom input
description_custom = []
cooking_style_custom = []
item_custom = []

#stores random numbers
description_used = []
style_used = []
item_used = []



puts "Would you like to see an randomly generated menu from the default menu,
or would you prefer to create your own?"
answer = gets.chomp

if answer.include?("create") || answer.include?("own") || answer.include?("make")

  puts "How many menu items would you like to have?"
  num_items = gets.chomp.to_i

  num_items.times do
    puts "Please enter a food description."
    description_custom.push(gets.chomp)
  end

  num_items.times do
    puts "Please enter a cooking style."
    cooking_style_custom.push(gets.chomp)
  end

  num_items.times do
    puts "Please enter a food!"
    item_custom.push(gets.chomp)
  end



  ## THIS IS CODE FOR RANDOMLY GENERATING
  num_items.times do |x|
    #no duplicates on description
    random_desc = Random.rand(0...num_items)
    while description_used.include?(random_desc)
      random_desc = Random.rand(0...num_items)
    end
    description_used.push(random_desc)

    #no duplicates on style
    random_style = Random.rand(0...num_items)
    while style_used.include?(random_style)
      random_style = Random.rand(0...num_items)
    end
    style_used.push(random_style)

    #no duplicates on item
    random_item = Random.rand(0...num_items)
    while item_used.include?(random_item)
      random_item = Random.rand(0...num_items)
    end
    item_used.push(random_item)

    puts "#{x+1}. #{description_custom[random_desc]} #{cooking_style_custom[random_style]} #{item_custom[random_item]}"
  end


else
  ## THIS IS CODE FOR RANDOMLY GENERATING
  10.times do |x|
    #no duplicates on description
    random_desc = Random.rand(0..9)
    while description_used.include?(random_desc)
      random_desc = Random.rand(0..9)
    end
    description_used.push(random_desc)

    #no duplicates on style
    random_style = Random.rand(0..9)
    while style_used.include?(random_style)
      random_style = Random.rand(0..9)
    end
    style_used.push(random_style)

    #no duplicates on item
    random_item = Random.rand(0..9)
    while item_used.include?(random_item)
      random_item = Random.rand(0..9)
    end
    item_used.push(random_item)

    puts "#{x+1}. #{description[random_desc]} #{cooking_style[random_style]} #{item[random_item]}"
  end
end
