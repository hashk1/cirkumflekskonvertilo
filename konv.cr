
def convert(line)
  posts = {
    # H-sistemo (Zamenhofa sistemo)
    "Ch" => "\u0108",
    "ch" => "\u0109",
    "Gh" => "\u011C",
    "gh" => "\u011D",
    "Hh" => "\u0124",
    "hh" => "\u0125",
    "Jh" => "\u0134",
    "jh" => "\u0135",
    "Sh" => "\u015C",
    "sh" => "\u015D",
    "Uh" => "Uh",
    "uh" => "uh",
    # X-sistemo
    "Cx" => "\u0108",
    "cx" => "\u0109",
    "Gx" => "\u011C",
    "gx" => "\u011D",
    "Hx" => "\u0124",
    "hx" => "\u0125",
    "Jx" => "\u0134",
    "jx" => "\u0135",
    "Sx" => "\u015C",
    "sx" => "\u015D",
    "Ux" => "\u016C",
    "ux" => "\u016D",
    # ^-sistemo
    "C^" => "\u0108",
    "c^" => "\u0109",
    "G^" => "\u011C",
    "g^" => "\u011D",
    "H^" => "\u0124",
    "h^" => "\u0125",
    "J^" => "\u0134",
    "j^" => "\u0135",
    "S^" => "\u015C",
    "s^" => "\u015D",
    "U^" => "\u016C",
    "u^" => "\u016D",
    "C~" => "C~",
    "c~" => "c~",
    "G~" => "G~",
    "g~" => "g~",
    "H~" => "H~",
    "h~" => "h~",
    "J~" => "J~",
    "j~" => "j~",
    "S~" => "S~",
    "s~" => "s~",
    "U~" => "\u016C",
    "u~" => "\u016D",
  }
  

  return line.gsub(/[cCgGhHjJsSuU][xh^~]/, posts)
end

if ARGV.size > 0
  File.open(ARGV[0], "r").each_line do |line|
    puts convert(line)
  end
else
  STDIN.each_line do |line|
    puts convert(line)
  end
end
