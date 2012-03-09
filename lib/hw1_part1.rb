### Part I - fun with strings

def palindrome?(string)
<<<<<<< HEAD
    # your code here
    pre_str = string.gsub(/\W/, "").downcase
    pre_str.eql? pre_str.reverse
end

def count_words(string)
    # your code here
    word_array = string.downcase.gsub(/\W/, " ").split
    h = Hash.new
    word_array.uniq.each{ |w| h[w] = word_array.count(w)}
    h
=======
  # your code here
end

def count_words(string)
  # your code here
>>>>>>> upstream/master
end
