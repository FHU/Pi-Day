# This program creates complicated rhythms with a small amount of code
# How does spread work? (look under Lang in the Help section)
# What happens if you change either/both of the numbers in spread?
live_loop :euclid_beat do
    sample :bd_haus, amp: 2 if (spread 1, 4).tick
    sample :elec_bong, amp: 1.5 if (spread 3, 8).look
    sample :perc_snap, amp: 0.8 if (spread 7, 11).look
    sleep 0.125
  end