#========================#
# Coded by Jared O’Leary #
#   www.JaredOLeary.com  #
#========================#

# This part of the code will either play a bass drum (:drum_heavy_kick) or a hi hat (:drum_cymbal_closed)
# If you change the one_in() number, this will change how likely the first part (if) will occur
# The bigger the number, the less likely it will occur
live_loop :drums do
    if one_in(2)
      sample :drum_heavy_kick
      sleep 0.5
    else
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
  
  # This part of the code will play one of two sounds
  # What does the finish: do? Try changing the number to find out how you can change the sample's sound
  live_loop :cymbals do
    if one_in(5)
      sample :drum_cymbal_hard, finish: 0.02
    else
      sample :drum_cymbal_soft, finish: 0.02
    end
    sleep 0.125
  end