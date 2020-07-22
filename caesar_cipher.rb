def caesar_cipher(input_string, shift_factor)
  input_as_array = input_string.chars
  for i in 0..input_as_array.length - 1
    char_number = input_as_array[i].ord
    if char_number >= 97 && char_number <= 122
      slide_factor = 96
    elsif char_number >= 65 && char_number <= 90
      slide_factor = 64
    else
      next
    end
    char_number -= slide_factor
    char_number += shift_factor
    char_number = char_number % 26
    char_number += slide_factor
    input_as_array[i] = char_number.chr
  end
  output_string = input_as_array.join
  output_string
end
