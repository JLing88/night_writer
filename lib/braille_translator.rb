class BrailleTranslator

  def initialize
    @letter_to_braille = {"a" => ["0.", "..", ".."],
                          "b" => ["0.", "0.", ".."],
                          "c" => ["00", "..", ".."],
                          "d" => ["00", ".0", ".."],
                          "e" => ["0.", ".0", ".."],
                          "f" => ["00", "0.", ".."],
                          "g" => ["00", "00", ".."],
                          "h" => ["0.", "00", ".."],
                          "i" => [".0", "0.", ".."],
                          "j" => [".0", "00", ".."],
                          "k" => ["0.", "..", "0."],
                          "l" => ["0.", "0.", "0."],
                          "m" => ["00", "..", "0."],
                          "n" => ["00", ".0", "0."]
                          }
  end
end


string_array = @file_contents_string.chars

braille_top_line = string_array.map do |character|
  string_array[character] = @letter_to_braille[character][0]
end
braille_middle_line = string_array.map do |character|
  string_array[character] = @letter_to_braille[character][1]
end
braille_bottom_line = string_array.map do |character|
  string_array[character] = @letter_to_braille[character][2]
end
