#========================#
# Coded by Jared O’Leary #
#   www.JaredOLeary.com  #
#========================#

# This program creates a simple, but random, beat
loop do
  # First it plays a bass drum along with four hi hat sounds (:drum_cymbal)
  sample :drum_heavy_kick
  4.times do
    # The if/else conditionals will randomly pick either the first sample or the second if the condition is not met
    # The one_in(4) means that the first sample will only occur if the computer rolls a four-sided dice and gets a one
    if one_in(4)
      sample :drum_cymbal_open, amp: 0.45, finish: 0.05
    else
      sample :drum_cymbal_closed, amp: 0.25
    end
    sleep 0.125
  end
  # The second half of this code plays a snare and plays one of the two cymbal sounds again
  sample :elec_snare
  4.times do
    if one_in(4)
      # What does finish: do to the sample?
      sample :drum_cymbal_open, amp: 0.45, finish: 0.05
    else
      sample :drum_cymbal_closed, amp: 0.25
    end
    sleep 0.125
  end
end