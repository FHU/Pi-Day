#========================#
# Coded by Jared O’Leary #
#   www.JaredOLeary.com  #
#========================#

# Change the seed number to change the beat
use_random_seed 1
use_bpm 120

#============================================================================#
# Variables equate to music durations
# I do this to save time by typing one letter instead of several numbers
# q = quarter note
# e = 8th note
# s = 16th note
# t = 32nd note
# de = dotted 8th note
#============================================================================#

q = 1
e = 0.5
s = 0.25
t = 0.125
de = 0.75

# This sets the time to make sure everything lines up together
# The sleep for 4 means it will wait four beats until sending a message to the rest of the loops to start again
live_loop :time do
  sleep 4
end

# This is the loop for the bass drum
live_loop :bass do
  # The sync makes sure everything lines up
  sync :time
  4.times do
    # Using the rrand for the amp: means that it will randomly pick how loud it will be (between the two numbers given)
    sample :drum_bass_hard, amp: rrand(0.75, 1.1)
    sleep s
    # The if one_in() allows you to make this sample play only if the computer rolls a dice and happens to get one out of (n)
    # In this case it means we will only hear it if the six-sided dice rolls a one.
    sample :drum_bass_hard, amp: rrand(0.25, 1) if one_in(6)
    sleep s
    # We only hear this drum if a ten sided dice rolls a one_in
    # What happens to the beat if you change the numbers around?
    sample :drum_bass_hard, amp: rrand(0.25, 1) if one_in(10)
    sleep s
    sample :drum_bass_hard, amp: rrand(0.25, 1) if one_in(6)
    sleep s
  end
end

# This is the loop for the hi hat
live_loop :hhat do
  sync :time
  16.times do
    # The if/else conditionals will only play the first section (if) only if the dice gets one out of two
    # Otherwise it will just sleep (else)
    if one_in(2)
      sample :drum_cymbal_closed, amp: rrand(0.25, 0.6)
      sleep t
      sample :drum_cymbal_closed, amp: rrand(0.15, 0.4) if one_in(12)
      sleep t
    else
      sleep s
    end
  end
end

# This is the snare drum loop
# The snare drum loop uses all the same concepts from the previous two loops
live_loop :snare do
  sync :time
  2.times do
    sleep s
    sample :drum_snare_soft, amp: rrand(0.25, 1) if one_in(4)
    sleep de
    sample :drum_snare_soft, amp: rrand(0.6, 1)
    sleep de
    sample :drum_snare_soft, amp: rrand(0.25, 1) if one_in(4)
    sleep s
  end
end 