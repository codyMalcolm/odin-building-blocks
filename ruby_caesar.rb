def caesar_cipher(input, shift)
  return input.chars.map{|c|
    (shift%26).times{c.next!} if c.ord.between?(65, 90) || c.ord.between?(97, 122)
    c[-1]
  }.join('')
end

phrase_1 = 'This handles shift values greater than 26 or less than -26'
phrase_2 = 'It also makes effective use of array and string methods'
phrase_3 = 'It avoids checking for direction by using modulo to convert negative values to the equivalent positive value (eg. -10 -> 16)'
phrase_4 = "Last, it doesn't mutate non-letter characters, and it does all this in only 6 lines of code"
phrase_5 = 'PS. shift values of 0 are fine too!'

puts encrypted_1 = caesar_cipher(phrase_1, 13)
puts caesar_cipher(encrypted_1, 13)

puts encrypted_2 = caesar_cipher(phrase_2, 1)
puts caesar_cipher(encrypted_2, 51)

puts encrypted_3 = caesar_cipher(phrase_3, -30)
puts caesar_cipher(encrypted_3, -22)

puts encrypted_4 = caesar_cipher(phrase_4, 1000000)
puts caesar_cipher(encrypted_4, 26-1000000%26)

puts caesar_cipher(phrase_5, 0)
