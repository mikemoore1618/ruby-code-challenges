# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.

# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:

# likes [] // must be "no one likes this"
# likes ["Peter"] // must be "Peter likes this"
# likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others

# -----------------------------------------------------------------------------------------------------------

# if likes = nil, likes = [], then return "no one likes this"
# if likes.length === 1, likes = ["Mike"], then return "Mike likes this"

# if likes.length == 2, ["Mike, "Dusty"] then, return " Mike and Dusty like this"

# if likes.length  == 3, ["Mike, "Dusty", "Talon"] then, return " Mike, Dusty, and Talon like this"

# if likes.length > 3, return "likes[0], likes[1], and likes.length - 2 others like this"
# ["Mike, "Dusty", "Talon", "Ryan"] then, return " Mike, Dusty, and 2 others like this"

def likes(names)
    return "no one likes this" if names.empty? == true
    return "#{names[0]} likes this" if names.count == 1 
    return "#{names[0]} and #{names[1]} like this" if names.count == 2 
    return "#{names[0]}, #{names[1]} and #{names[2]} like this" if names.count == 3
    return "#{names[0]}, #{names[1]} and 2 others like this"  if names.count == 4
    return "#{names[0]}, #{names[1]} and #{names.count - 2} others like this"  if names.count > 4
end 

