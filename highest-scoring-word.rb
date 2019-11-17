# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.


def high(x)
    index = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6, g: 7, h: 8, i: 9, j: 10, k: 11, l: 12, m: 13, n: 14, o: 15, p: 16, q: 17, r: 18, s: 19, t: 20, u: 21, v: 22, w: 23, x: 24, y: 25, z: 26 }
  
    words = x.split()
    scores = {}
  
    for word in words
      unless scores.include?(word)
        scores[word] = 0
      #  puts scores
      end
      for letter in word.split('')
        scores[word] = scores[word] + index[letter.to_sym]
      end
    end
  
    # go through scores and find the highest scoring word
    winner = scores.sort_by {|k,v| v}.reverse.first
    
    for word in words
      if scores[word] == winner[1]
        return word
      else
        return winner[0]
      end
    end
  end