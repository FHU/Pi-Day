#========================#
# Coded by Jared O’Leary #
#   www.JaredOLeary.com  #
#========================#

# This sets how fast the song is played
use_bpm 120

# First phrase is played twice
2.times do
  play :e, release: 2
  sleep 2
  play :d, release: 2
  sleep 2
  play :c, release: 4
  sleep 4
end

# Four repeated notes
4.times do
  play :c
  sleep 1
end

# Four more repeated notes
4.times do
  play :d
  sleep 1
end

# Our first phrase is played one last time
play :e, release: 2
sleep 2
play :d, release: 2
sleep 2
play :c, release: 4
sleep 4