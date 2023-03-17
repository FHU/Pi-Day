#========================#
# Coded by Jared O’Leary #
#   www.JaredOLeary.com  #
#========================#

# This is the loop for the bass drum and choir
live_loop :whatev do
    sample :ambi_choir, rate: 0.3, pan: rdist(1)
    sample :bd_haus, rate: 1
    sleep 0.5
  end
  
  # This is the hihat loop.
  live_loop :hhat do
    # I use these variables as a ring so I don't have to write out variations for all four notes
    # A ring allows you to cycle through your options forever (in this case, there are four options I provided)
    hh_amp = (ring 0.13, 0.13, 0.6, 0.16)
    hh_rate = (ring 1, 1, 1.2, 1)
  
    # Using this loop, I am able to change the amp: and rate: of the cymbal for each note played
    # Notice the .tick? and .look? The .tick cycles through the ring and the .look tells the computer to look at the .tick number
    # This lets the computer know which number to use from my ring variables above.
    4.times do
      sample :drum_cymbal_closed, amp: hh_amp.tick, rate: hh_rate.look
      sleep 0.125
    end
  end
  
  # This is the loop for the guitar sounds
  live_loop :guit do
  
    #I use two with_fx blocks to apply both effects to the first guitar sample
    # However, the second guitar sample only has one effect (:flanger)
    with_fx :flanger, feedback: 0.4 do
      with_fx :echo, mix: 1, phase: 0.25 do
        sample :guit_em9, rate: 0.5, pan: rdist(1)
      end
      # Check out what rdist does under the Lang section of Help
      sample :guit_em9, mix: 1, rate: -0.5, pan: rdist(1)
      sleep 8
    end
  end
  
  # This is the snare drum loop (with one extra bass note)
  live_loop :snare do
    # What happens when you change the mix: or phase: numbers?
    with_fx :bitcrusher, mix: 0.8, phase: 0.25 do
      sleep 1.0
      # What does :rate do? What does rate: do when it's a negative number?
      sample :drum_snare_hard, amp: 0.2, rate: -1
      sleep 0.5
      sample :drum_snare_hard, amp: 0.4, rate: 2
      sleep 0.25
      sample :bd_haus, rate: 1
      sleep 0.25
    end
  end