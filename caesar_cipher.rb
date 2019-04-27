def caesar_cipher(string, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  coded_chars = string.chars.map do |char|
    if char =~ /[^a-zA-Z]/
      char
    else
      index = alphabet.index(char.downcase)
      new_index = (index + num) % 26
      new_char = alphabet[new_index]
      char =~ /[A-Z]/ ? new_char.upcase : new_char
    end
  end
  coded_chars.join
end

puts caesar_cipher("What a string!", 5)
