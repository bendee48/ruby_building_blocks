dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = {}
  dictionary.each do |word|
    num = string.scan(/#{word}/i).count
    hash[word] = num if num > 0
  end
  hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
