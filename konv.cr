# The MIT License (MIT)
# 
# Copyright (c) 2020 hashk1
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.


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
