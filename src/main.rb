# frozen_string_literal: true

# ---------------------------------------------------------------------------------------------------------
#

#                                                 VETFRIEND
#                                                ~~~~~~~~~~~
#                                           Terminal Application
#
#                                           Created by Lily Noël
#                                    Coder Academy • T1A3 • Ruby Module
#

# ---------------------------------------------------------------------------------------------------------
#                                     ~ App won't Work without these!! ~
# ****************************************** GEMS & FORMATTING ********************************************

require 'rainbow/refinement'
using Rainbow

#  big welcome font (gem: tty-font)
require 'tty-font'
font = TTY::Font.new(:starwars)

# main nav menu (gem: tty-prompt)
require 'tty-prompt'
prompt = TTY::Prompt.new

# calls upon pre defined methods & menu file
require_relative 'menu'
require_relative 'methods'

# ---------------------------------------------------------------------------------------------------------
#                                  ~ ARGV Command Line Help Instructions ~
# ---------------------------------------------------------------------------------------------------------
#  ***************************************** ruby main.rb -h **********************************************

if ARGV[0]
  ARGV[0] = '-h'
  help_info
  exit
end
ARGV.clear

# ---------------------------------------------------------------------------------------------------------
#  ****************************************** WELCOME MESSAGE *********************************************

#   clear screen ~~~~~~~
system 'clear'

puts # -------------- empty line --------------
puts '⭐️ Hi! Welcome to ⭐️'.center(90).color('#3b4078').bright
puts ''.center(90).underline # -- border --
puts # -------------- empty line --------------

# ---------------------------------------------------------------------------------------------------------
#  ******************************************** PAGE HEADER ***********************************************

puts font.write('VetFriend')
puts ''.center(90).underline # -- border --
puts # -------------- empty line --------------

# ---------------------------------------------------------------------------------------------------------
#  ************************************* CALL TO ACTION: ENTER APP ****************************************

# ***** PROMPT: Press Any Key To Run App *****
prompt.keypress('Press any key to begin...'.center(90).color('#3b4078').bright)

#   clear screen ~~~~~~~
system 'clear'

# redirects to main menu page ~~~~~
main_menu

# ---------------------------------------------------------------------------------------------------------
#                                           ~ END OF PAGE ~
