# frozen_string_literal: true

# ---------------------------------------------------------------------------------------------------------
#  ****************************************** GEMS & FORMATTING *******************************************

require 'rainbow/refinement'
using Rainbow

# big welcome font (gem: tty-font)
require 'tty-font'
font = TTY::Font.new(:starwars)

# main nav menu (gem: tty-prompt)
require 'tty-prompt'
prompt = TTY::Prompt.new

# calls upon preset classes in classes.rb
require_relative 'classes'
require_relative 'methods'

# ---------------------------------------------------------------------------------------------------------
#  ******************************************** PAGE HEADER ***********************************************

#   clear screen ~~~~~~~
system 'clear'

puts font.write('Returning')
puts font.write('Friend')

# ---------------------------------------------------------------------------------------------------------
#  ****************************************** WELCOME MESSAGE *********************************************

puts ' '.center(95).underline # -- top border --
puts # -------------- empty line --------------
puts '☀ Welcome back! What would you like to do? ☀'.center(95).color('#3b4078').bright
puts ' '.center(95).underline # -- bottom border --
puts # -------------- empty line --------------

# ---------------------------------------------------------------------------------------------------------
#  ********************************************* PAGE MENU ************************************************

loop do
  puts "1. View Profile \n2. Update Info \n3. Return to Main Menu"
  puts "\nPlease enter a number (1-3)".underline + ": \n\n"

  choice = gets.chomp

  case choice

  when '1' # 1.View Profile ~~~~~
    view_profile

  when '2' # 2. Update Info ~~~~~
    update_info

  when '3' # 3. Return to Main Menu ~~~~~
    main_menu

  # ---------------------------------------------------------------------------------------------------------
  #  *************************************** INVALID INPUT MESSAGE ******************************************

  else

    #   clear screen ~~~~~~~
    system 'clear'

    puts ' '.center(95).underline # -- top border --
    puts # -------------- empty line --------------
    puts '️⚡️ Oh no! That didn\'t work. Please Try Again ⚡️'.center(95).color('#730707').bright
    puts ' '.center(95).underline # -- bottom border --
    puts # -------------- empty line --------------
  end
end

# ---------------------------------------------------------------------------------------------------------
#                                           ~ END OF PAGE ~
