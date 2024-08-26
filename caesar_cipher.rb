def caesar_cipher(string, shift = 5)
  string.chars.map do |char|
    if char.match?(/[a-zA-z]/)
      shift.times { char = char.next }
      char[-1]
    else
      char
    end
  end.join
end

print "Enter a shifted value (default: 5): "
shift = gets.chomp.to_i
print "Enter a string to encrypt: "
plaintext = gets.chomp
encrypted = caesar_cipher(plaintext, shift)
puts "Encrypted string: #{encrypted}"
