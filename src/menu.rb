# frozen_string_literal: true

# # ---------------------------------------------------------------------------------------------------------
#                                      ~ App won't Work without these!! ~
# # ---------------------------------------------------------------------------------------------------------
# #  ****************************************** GEMS & FORMATTING *******************************************

# colorful text (gem: rainbow)
require 'rainbow/refinement'
using Rainbow

# main navigation menu (gem: tty-prompt)
require 'tty-prompt'

# calls upon pre defined methods
require_relative 'methods'

# ---------------------------------------------------------------------------------------------------------
#  ****************************************** WELCOME MESSAGE *********************************************

puts ' '.center(90).underline # -- top border --
puts # -------------- empty line --------------
puts '• What would you like to do today? •'.center(90).color('#3b4078').bright
puts ''.center(90).underline # -- bottom border --

# ---------------------------------------------------------------------------------------------------------
#  ********************************************* PAGE MENU ************************************************

def main_menu # tty-prompt menu defined as a method so that i can call it from other files.
  #   clear screen ~~~~~~~
  system 'clear'

  while true
    prompt = TTY::Prompt.new(quiet: true)
    choice = prompt.select('Please select:'.underline, cycle: true, show_help: :always,
                                                       symbols: { marker: '⭐️' }) do |menu|
      menu.choice ' Add New Friend', 1
      menu.choice ' Returning Friend', 2
      menu.choice ' Doctor Info', 3
      menu.choice ' Exit', 4

      puts # -------------- empty line -------------- (between menu & header)

      all_pets = []

      case choice

      when 1 # 1. New Friend ~~~~~
        pet = add_new_friend
        all_pets.push pet
        break

      when 2 # 2. Returning Friend ~~~~
        #  pp all_pets
        load('returning.rb')
        break

      when 3 # 3. Doctor Info ~~~~
        load('vet.rb')
        break

      # ---------------------------------------------------------------------------------------------------------
      #  ******************************************** EXIT MESSAGE **********************************************

      when 4 # 4. Exit

        #   clear screen ~~~~~~~
        system 'clear'

        puts ' '.center(95).underline # -- top border --
        puts # -------------- empty line --------------
        puts '✨ Thank you for using VetFriend. Have a nice day ✨'.center(95).color('#3b4078').bright
        puts ' '.center(95).underline # -- top border --
        puts # -------------- empty line --------------

        # exit program ~
        exit
      end
    end
  end
end
# ---------------------------------------------------------------------------------------------------------
#                                           ~ END OF PAGE ~
