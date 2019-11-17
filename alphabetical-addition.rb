# Your task is to add up letters to one letter.

# The function will be given a variable amount of arguments, each one being a letter to add.

# Notes:
# Letters will always be lowercase.
# Letters can overflow (see second to last example of the description)
# If no letters are given, the function should return 'z'
# Examples:
# add_letters('a', 'b', 'c') = 'f'
# add_letters('a', 'b') = 'c'
# add_letters('z') = 'z'
# add_letters('z', 'a') = 'a'
# add_letters('y', 'c', 'b') = 'd' # notice the letters overflowing
# add_letters() = 'z'

#------------------------------------------------------------------------------------------------------

# create array for entire alphabet
# assign numeric vales to alphabet array using index # + 1
# if 

def add_letters(*letters)
    return 'z' if letters.empty?
    alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    # %w(foo bar) is a shortcut for ["foo", "bar"]
    index = 0
    letters.each do |letter|
      index += (alphabet.index(letter) + 1)
    end
    puts index
    alphabet[(index - 1) % 26]
  end