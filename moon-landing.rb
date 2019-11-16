# Welcome to Sonic Pi v3.1
with_fx :pan do
  live_loop :beat do
    #sample :loop_mika, cutoff: rrand(50, 80)
    sample :loop_mika, cutoff: rrand(100, 130)
    sleep 1
  end
end

live_loop :moon do
  #sample :guit_e_fifths, amp: 5, attack: 1, release: 3
  sample :ambi_lunar_land, attack: 1, decay: 0.2, sustain: 2, release: 2
  sleep 6
end


comment do
  live_loop :one_beep, sync: :beat do
    use_synth :beep
    play [40, 60].choose, release: 0.3, amp: 1
    sleep 1
  end
end



live_loop :one_scale, sync: :beat do
  play scale(:e3, :minor_pentatonic).tick, release: 0.3, amp: 1
  sleep 1
end
