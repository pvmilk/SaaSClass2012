### Part III - anagrams

def anagrams?(stringA, stringB)
    stringA.downcase.split(//).sort == stringB.downcase.split(//).sort
end

def combine_anagrams(words)
    # your code here
    # HINT: you can quickly tell if two words are anagrams by sorting their
    #  letters, keeping in mind that upper vs lowercase doesn't matter
    is_used = Array.new(words.length, false)
    ret = []
    words.each_with_index do |w, i|
      if is_used[i] == false then
          group = [w]
          words[i+1, words.length].each_with_index do |pair_w, j|
              if is_used[j+i+1] == false and anagrams?(w, pair_w) then
                  group += [pair_w]
                  is_used[j+i+1] = true
              end
          end
          ret   += [group]
          is_used[i] = true
      end
    end
    ret
end
