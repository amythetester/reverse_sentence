# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  # reverse string
  i = 0
  j = my_sentence.length - 1

  while i < j
    temp = my_sentence[j]
    my_sentence[j] = my_sentence[i]
    my_sentence[i] = temp
    i += 1
    j -= 1
  end

  # reverse words
  i = 0
  max_index = my_sentence.length - 1
  first = 0

  while i <= max_index
    if my_sentence[i] != " " && my_sentence[i - 1] == " "
      first = i
    elsif my_sentence[i] != " " && (my_sentence[i + 1] == " " || my_sentence[i + 1] == nil)
      last = i

      while first < last
        my_sentence[first], my_sentence[last] = my_sentence[last], my_sentence[first]

        first += 1
        last -= 1
      end
    end
    i += 1
  end
  return my_sentence
end
