def char_decoder(string)
  morse_dectionary = {
    ".-" => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.." => "D",
    "." => "E",
    "..-." => "F",
    "--." => "G",
    "...." => "H",
    ".." => "I",
    ".---" => "J",
    "-.-" => "K",
    ".-.." => "L",
    "--" => "M",
    "-." => "N",
    "---" => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-." => "R",
    "..." => "S",
    "-" => "T",
    "..-" => "U",
    "...-" => "V",
    ".--" => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z",
  }
  morse_dectionary[string]
end

puts (char_decoder(".-"))


def word_decoder(string)

    split_letter = string.split
     
    str = ""
    split_letter.each { |letter| str += char_decoder(letter) }
    str
    
end

puts(word_decoder("-- -.--"))

def sentence_decoder(string)
  string.split("   ").map { |word| word_decoder(word) }.join(" ")
end

puts(sentence_decoder(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."))