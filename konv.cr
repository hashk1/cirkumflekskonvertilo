
def convert(line)
  replace = {
    # H-sistemo (Zamenhofa sistemo)
    "Ch" => "\u0108", # Ĉ
    "ch" => "\u0109", # ĉ
    "Gh" => "\u011C", # Ĝ
    "gh" => "\u011D", # ĝ
    "Hh" => "\u0124", # Ĥ
    "hh" => "\u0125", # ĥ
    "Jh" => "\u0134", # Ĵ
    "jh" => "\u0135", # ĵ
    "Sh" => "\u015C", # Ŝ
    "sh" => "\u015D", # ŝ
    "W"  => "\u016C", # Ŭ
    "w"  => "\u016D", # ŭ
    # X-sistemo
    "Cx" => "\u0108", # Ĉ
    "cx" => "\u0109", # ĉ
    "Gx" => "\u011C", # Ĝ
    "gx" => "\u011D", # ĝ
    "Hx" => "\u0124", # Ĥ
    "hx" => "\u0125", # ĥ
    "Jx" => "\u0134", # Ĵ
    "jx" => "\u0135", # ĵ
    "Sx" => "\u015C", # Ŝ
    "sx" => "\u015D", # ŝ
    "Ux" => "\u016C", # Ŭ
    "ux" => "\u016D", # ŭ
    # ^-sistemo
    "C^" => "\u0108", # Ĉ
    "c^" => "\u0109", # ĉ
    "G^" => "\u011C", # Ĝ
    "g^" => "\u011D", # ĝ
    "H^" => "\u0124", # Ĥ
    "h^" => "\u0125", # ĥ
    "J^" => "\u0134", # Ĵ
    "j^" => "\u0135", # ĵ
    "S^" => "\u015C", # Ŝ
    "s^" => "\u015D", # ŝ
    "U^" => "\u016C", # Ŭ
    "u^" => "\u016D", # ŭ
    "U~" => "\u016C", # Ŭ
    "u~" => "\u016D", # ŭ
  }
  
  pattern = /[CcGgHhJjSs][hx^]|[Uu][x^~]|[Ww]/

  return line.gsub(pattern, replace)
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
