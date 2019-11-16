


with_fx :reverb, room: 1 do
  live_loop :safari do
    n, v = get "/osc/note"
    sample :loop_safari, amp: n
    #sample :loop_safari, amp: v, pan: -0.5
    sample :loop_tabla
    #sample :guit_e_fifths
    play :e1, release: 5, attack: 2, decay: 1, sustain: 4, cutoff: rrand(70, 130)
    play [40, 60, 80, 100].choose
    sleep 4
  end
end





live_loop :tone do
  #use_random_seed 10
  play (scale 50, :minor_pentatonic).choose, beat_strech: 0.1, rate: rrand(1,10), rpitch: 10
  #sample :loop_industrial
  sleep 1
end
