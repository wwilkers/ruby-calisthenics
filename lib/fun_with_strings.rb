module FunWithStrings
  def palindrome?
    #ignore case and non word characters and see if the word is the same when rev
    (word = self.downcase.gsub(/\W/, '')) == word.reverse
  end
  def count_words
    #ignore punctuation and case then count instances of the word with a hash
   self.downcase.gsub(/[[:punct:]]/, '').split.each_with_object(Hash.new(0)) { |word, num| num[word] += 1 }
  end
  def anagram_groups
    #split the word with words hashed it an array
    Array( self.split.each_with_object(Hash.new{|hash, key| hash[key] = [] }) { |word, num| num[word.downcase.chars.sort] << word }.values )
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
