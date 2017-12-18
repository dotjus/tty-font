require 'tty-font'
require 'pastel'

pastel = Pastel.new
font = TTY::Font.new(:doom)

puts pastel.yellow(font.write("DOOM"))

puts font.write("ABCDEFGHIJKLMNOPQRSTUVWXYZ")

puts font.write("abcdefghijklmnopqrstuvwxyz")

puts font.write("0123456789")

puts font.write("!#\$%^&*()-_+=")

puts font.write("\"',.:;><?@][\\/")
