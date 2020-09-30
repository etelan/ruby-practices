
#Keeps track of our wins
won1 = 0
won2 = 0

#While no one has won
while (won1 < 2) && (won2 < 2)
  player_one = rand(6) + rand(6)
  player_two = rand(6) + rand(6)

  #Who was higher, and add score
  if player_one > player_two
    won1 += 1
  else
    won2 += 1
  end

end

if won1 == 2
  #We win!
  puts "We win!"
  return true
else
  #We lose ;(
  puts "We lose :("
  return false
end
