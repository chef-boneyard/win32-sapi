#######################################################################
# example_sapi5.rb
#
# This is a simple demonstration of the win32-sapi library. You can
# run this code via the 'rake example' task.
#
# Modify as you see fit.
#######################################################################
require 'win32/sapi5'
include Win32

v = SpVoice.new
v.Speak('Shall we play a game?')
