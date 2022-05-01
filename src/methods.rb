# frozen_string_literal: true

# # ---------------------------------------------------------------------------------------------------------
#                                      ~ App won't Work without these!! ~
# # ---------------------------------------------------------------------------------------------------------
# #  ****************************************** GEMS & FORMATTING *******************************************

# colorful text (gem: rainbow)
require 'rainbow/refinement'
using Rainbow

# # big welcome font (gem: tty-font)
require 'tty-font'

# calls upon pre defined classes
require_relative 'classes'

# # ---------------------------------------------------------------------------------------------------------
#                                      ~ Menu Option 1. Add New Friend ~
# # ---------------------------------------------------------------------------------------------------------
# #  *********************************** Method 1 out 1: add_new_friend *************************************

def add_new_friend
  def pet_info
    "\n♥ Name:".color('#3b4078') + "\n#{name}\n" +
      "\n♥ Type:".color('#3b4078') + "\n#{type}\n" +
      "\n♥ Human:".color('#3b4078') + "\n#{human}\n" +
      "\n♥ Phone:".color('#3b4078') + "\n#{phone}\n"
  end

  #   user input ~~~~~~~~
  system 'clear'

  #   page header ~~~~~~~~
  font = TTY::Font.new(:starwars)
  puts font.write('New Friend')

  #   welcome message ~~~~~~~~
  puts ' '.center(95).underline # -- top border --
  puts # -------------- empty line --------------
  puts '️☀ Welcome new friend! We\'d like to get to know you better ️☀'.center(95).color('#3b4078').bright
  puts ' '.center(95).underline # -- bottom border --
  puts # -------------- empty line --------------

  #   user input ~~~~~~~~
  pet = Pet.new

  puts "What is our new friend's name?".color('#3b4078')
  pet.name = gets.chomp.capitalize

  puts "\nWhat type of animal is #{pet.name}?".color('#3b4078')
  pet.type = gets.chomp.capitalize

  puts "\nWhat is #{pet.name}'s human's name?".color('#3b4078')
  pet.human = gets.chomp.capitalize

  puts "\nWhat is #{pet.human}'s contact number?".color('#3b4078')
  pet.phone = gets.strip.to_i

  #   clear screen ~~~~~~~
  system 'clear'

  #   display profile  ~~~~~~~
  puts ' '.center(90).underline # -- top border --
  puts # -------------- empty line --------------
  puts "✨ #{pet.name}'s VetFriend Profile ✨".center(90).color('#3b4078').bright
  puts ' '.center(90).underline # -- bottom border --

  puts pet.pet_info
  puts # -------------- empty line --------------
  pet
end

# # ---------------------------------------------------------------------------------------------------------
#                                      ~ Menu Option 2. Returning Friend ~
# # ---------------------------------------------------------------------------------------------------------
#  ************************************** Method 1 out 2: view_profile **************************************

def view_profile
  #   clear screen ~~~~~~~
  system 'clear'

  #   page header ~~~~~~~~
  puts # -------------- empty line --------------
  puts '✨ This is a profile ✨'.center(90).color('#3b4078').bright
  puts ' '.center(90).underline # -- bottom border --
  puts # -------------- empty line --------------
end

#  *************************************** Method 2 out 2: update_info **************************************

def update_info
  #   clear screen ~~~~~~~
  system 'clear'

  #   page header ~~~~~~~~
  puts # -------------- empty line --------------
  puts '⚡️ Your info has been updated! ⚡️'.center(90).color('#3b4078').bright
  puts ' '.center(90).underline # -- bottom border --
  puts # -------------- empty line --------------
end
# # ---------------------------------------------------------------------------------------------------------
#                                      ~ Menu Option 3. Doctor Info ~
# # ---------------------------------------------------------------------------------------------------------
#  ************************************** Method 1 out 2: dr_feather **************************************

def dr_feather
  #   clear screen ~~~~~~~
  system 'clear'

  #   page header ~~~~~~~~
  puts # -------------- empty line --------------
  puts '✨ Dr Feather ✨'.center(90).color('#3b4078').bright
  puts ' '.center(90).underline # -- bottom border --
  puts # -------------- empty line --------------
  puts 'Availability | Specialty'.center(90)
end

#  *************************************** Method 2 out 2: dr_furr **************************************

def dr_furr
  #   clear screen ~~~~~~~
  system 'clear'

  #   page header ~~~~~~~~
  puts # -------------- empty line --------------
  puts '✨ Dr Furr ✨'.center(90).color('#3b4078').bright
  puts ' '.center(90).underline # -- bottom border --
  puts # -------------- empty line --------------
  puts 'Availability | Specialty'.center(90)
end
# ---------------------------------------------------------------------------------------------------------
#                         ~ ARGV Command Line Help Instructions (ruby main.rb -h) ~
# # --------------------------------------------------------------------------------------------------------
#  ************************************** Method 1 out 1: help_info ****************************************

def help_info
  #   clear screen ~~~~~~~
  system 'clear'

  #   page header ~~~~~~~~
  puts # -------------- empty line --------------
  puts '✨ VetFriend Help Instructions ✨'.center(90).color('#3b4078').bright
  puts ' '.center(90).underline # -- bottom border --
  puts # -------------- empty line --------------

  # how to use program  ~~~~~
  puts 'How to use VetFriend'.center(90).bright
  puts # -------------- empty line --------------
  puts '1. To run the VetFriend program type ' + 'ruby main.rb'.underline + ' followed by the [ enter ] key.'
  puts '2. This will bring you to a welcome page where you may press any key to run the program.'
  puts '3. You are now at the main menu, here you can use your arrow keys to navigate the program.'
  puts '4. Follow the input prompts on each page.'
  puts '5. To exit the program, navigate back to the main menu as prompted, use your arrow keys to'
  puts '   move down to illuminate the ' + 'exit'.underline + ' prompt and press the [ enter ] key to run the command.'

  puts # -------------- empty line --------------
  puts 'Features'.center(90).bright

  # New Friend  ~~~~~
  puts 'New Friend'.underline.color('#3b4078') + ' ⚡️'
  puts "• To add a new friend to the program, type in required details as prompted: \n" + '  ' + "animal's name | animal type | human's name | contact number".underline
  puts '• Once all details are entered, animal profile will be displayed.'
  puts '• Select next option on menu.'

  # Returning Friend ~~~~~
  puts "\nReturning Friend".underline.color('#3b4078') + ' ⚡️'
  puts '• Enter number corresponding with chosen prompt followed by [ enter ] key.'
  puts '• Features under construction (view profile, update info).'

  # Doctor info ~~~~~
  puts "\nDoctor info".underline.color('#3b4078') + ' ⚡️'
  puts '• Enter number corresponding with chosen prompt followed by [ enter ] key.'
  puts "• Features under construction (view individual doctor's info: specialty & availability)."

  puts # -------------- empty line --------------
  puts "Dependencies\n".center(90).bright
  puts 'The following gems are required to use this app:'.underline.color('#3b4078') + "\ntty-prompt | tty-font | rainbow 🌈"

  puts ' '.center(90).underline # -- bottom border -
  puts # -------------- empty line --------------
  puts 'Et Voila :-)'.center(90).color('#3b4078').bright # -- bottom border --
end

# ---------------------------------------------------------------------------------------------------------
#                                           ~ END OF PAGE ~
