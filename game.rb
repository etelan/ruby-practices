
# Successful moves
correct = 0


# While we have not won
while correct < 2

  #Initial
  if correct == 0
    puts "You start in a forest."
  elsif correct == 1
    puts "You begin to see light."
  elsif correct == -1
    puts "You return to the forest."
    correct = 0
  end

  # Ask for input
  puts "Your options are 'right' 'left' 'forward'"
  option = gets.chomp

  # What did they do?
  case option.downcase
  when 'right'
    puts ""
    puts "A goblin devours you. You die."
    correct = -1
    puts "You are back at the start, with your memory intact."
    puts ""
  when 'left'
    puts ""
    puts "A werewolf frightens you, and you die of shock."
    correct = -1
    puts "You are back at the start, shaken, with your memory intact."
    puts ""
  when 'forward'

    # Spacer
    puts ""

    # You win!
    if correct == 1
      puts "You run out of the forest, free of the monsters."
      puts "Hit enter to end the game, or write something then enter to play again."

      # End the game
      if gets.chomp == ""
        correct = 2
      # Restart the game
      else
        correct = 0
      end
    # First area complete
    else
      correct = 1
    end
  end
end
