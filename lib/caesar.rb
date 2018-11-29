def caesar_encode(string,offset)
    lower_alphabet = [*('a'..'z')]
    upper_alphabet = [*('A'..'Z')]
    shift_lower = lower_alphabet.rotate(offset)
    shift_upper = upper_alphabet.rotate(offset)
    
    string.split("").map do |letter|
        if lower_alphabet.include?(letter)  
          letter = shift_lower[lower_alphabet.index(letter)]
          letter
        elsif upper_alphabet.include?(letter)
            letter = shift_upper[upper_alphabet.index(letter)]
          letter
        else
          letter
        end
    end.join("")
end

def caesar_decode(string, offset)
    lower_alphabet = [*('a'..'z')]
    upper_alphabet = [*('A'..'Z')]
    shift_lower = lower_alphabet.rotate(-offset)
    shift_upper = upper_alphabet.rotate(-offset)
    
    string.split("").map do |letter|
        if lower_alphabet.include?(letter)  
          letter = shift_lower[lower_alphabet.index(letter)]
          letter
        elsif upper_alphabet.include?(letter)
            letter = shift_upper[upper_alphabet.index(letter)]
          letter
        else
          letter
        end
    end.join("")
end