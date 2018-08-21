dictionary = ["below","down","go","going","horn","how","howdy","it","i","low", "own","part","partner","sit"]

def substrings(sentence, words)
  results = Hash.new
  words.each{|w|
    results[w] = sentence.downcase.scan(w.downcase).count if sentence.downcase.match(w.downcase)
  }
  results
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
