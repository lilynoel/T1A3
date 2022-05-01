# frozen_string_literal: true

# ---------------------------------------------------------------------------------------------------------
#  ****************************************** GEMS & FORMATTING *******************************************

# colorful text (gem: rainbow)
require 'rainbow/refinement'
using Rainbow

# big welcome font (gem: tty-font)
require 'tty-font'
font = TTY::Font.new(:starwars)

# ---------------------------------------------------------------------------------------------------------
#  ******************************************** CLEAR SCREEN **********************************************

system 'clear'

# ---------------------------------------------------------------------------------------------------------
#  ******************************************** PAGE HEADER ***********************************************

puts font.write('Doctor')
puts font.write('Info')

# ---------------------------------------------------------------------------------------------------------
#  ****************************************** WELCOME MESSAGE *********************************************

puts ' '.center(95).underline # -- top border --
puts # -------------- empty line --------------
puts '☀ Hello Friend. What would you like to do? ☀'.center(95).color('#3b4078').bright
puts ' '.center(95).underline # -- bottom border --
puts # -------------- empty line --------------

# ---------------------------------------------------------------------------------------------------------
#  ********************************************* PAGE MENU ************************************************

loop do
  puts "1. View Dr Feather \n2. View Dr Furr \n3. Return to Main Menu"
  puts "\nPlease enter a number (1-3)".underline + ": \n\n"

  choice = gets.chomp

  #   clear screen ~~~~~~~
  system 'clear'

  case choice

  when '1' # 1. View Dr Feather ~~~~~
    dr_feather

  when '2' # 2. View Dr Furr ~~~~~
    dr_furr

  when '3' # 3. Return to Main Menu ~~~~~
    main_menu

  # ---------------------------------------------------------------------------------------------------------
  #  *************************************** INVALID INPUT MESSAGE ******************************************

  else

    #   clear screen ~~~~~~~
    system 'clear'

    puts ' '.center(95).underline # -- top border --
    puts # -------------- empty line --------------
    puts "⚡️ Oh no! That didn\'t work. Please Try Again ⚡️".center(95).color('#730707').bright
    puts ' '.center(95).underline # -- bottom border --
    puts # -------------- empty line --------------
  end
end

# ---------------------------------------------------------------------------------------------------------
#                                           ~ END OF PAGE ~
