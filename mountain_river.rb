
live_loop :bg do
  sample :bd_haus
  use_synth :dark_ambience
  play 80, attack: 0.2, sustain: 0.3, release: 0.5
  sleep 1
end

live_loop :mountain do
  sample :guit_em9, amp: 3
  play_pattern_timed chord(:E3, :m7), [0.25, 0.5], amp: 2
  sleep 0.5
end


live_loop :river do
  play_pattern_timed (scale :c3, :minor_pentatonic, num_octaves: 1), 0.25, amp: 1
  sleep 0.5
end
