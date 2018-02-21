def equal(string1, string2)
  string1.downcase!
  string2.downcase!
  return "'#{string1}' and '#{string2}' are equal" if string1 == string2
  return "'#{string1}' and '#{string2}' are not equal"
end

def palindrome(string)
  string.downcase!
  return "'#{string}' is a palindrome" if string == string.reverse
  return "'#{string}' isn't a palindrome"
end

def isogram(string)
  string.downcase!
  return "'#{string}' is an isogram" if string.chars.uniq == string.chars
  return "'#{string}' isn't an isogram"
end

def anagram(string1, string2)
  string1.downcase!
  string2.downcase!
  return "'#{string1}' and '#{string2}' are anagrams" if string1.chars.sort == string2.chars.sort
  return "'#{string1}' and '#{string2}' aren't anagrams"
end
