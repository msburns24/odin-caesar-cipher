def caesarCipher(string, shift)
  # Define local variables
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  lowerLets = alphabet.split('')
  upperLets = alphabet.upcase.split('')
  allLets = upperLets + lowerLets
  returnString = ""

  # Loop through string
  string.split('').each do |char|
    if lowerLets.include?(char)
      shiftedIndex = lowerLets.find_index(char) + shift
      shiftedIndex = shiftedIndex % 26
      returnString << lowerLets[shiftedIndex]
    elsif upperLets.include?(char)
      shiftedIndex = upperLets.find_index(char) + shift
      shiftedIndex = shiftedIndex % 26
      returnString << upperLets[shiftedIndex]
    else
      returnString << char
    end
  end
  returnString
end

(26..51).each do |i|
  phrase = "Hi, my name is Matt!"
  puts caesarCipher(phrase, i)
end