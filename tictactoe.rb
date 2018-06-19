puts "***********************"
puts "Welcome to Tic Tac Toe!"
puts "***********************"

loop do
#play _again loop

board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ]

def display_board(board)
  puts " 1 - #{board[0]} | 2- #{board[1]}| 3- #{board[2]} "
  puts " ___________________________"
  puts " 4- #{board[3]} | 5- #{board[4]} | 6- #{board[5]} "
  puts " ___________________________"
  puts " 7- #{board[6]} | 8- #{board[7]} | 9- #{board[8]} "
end


#define conditions to win
def winner(board)
  if board[0]=="X" && board[1]=="X" && board[2]=="X" || board[0]=="X" && board[3]=="X" && board[6]=="X"
    puts "X wins!!"
  elsif board[3]=="X" && board[4]=="X" && board[5]=="X" || board[1]=="X" && board[4]=="X" && board[7]=="X"
    puts "X wins!!"
  elsif board[6]=="X" && board[7]=="X" && board[8]=="X" || board[2]=="X" && board[5]=="X" && board[8]=="X"
    puts "X wins!!"
  elsif board[0]=="O" && board[1]=="O" && board[2]=="O" || board[0]=="O" && board[3]=="O" && board[6]=="O"
    puts "O wins!!"
  elsif board[3]=="O" && board[4]=="O" && board[5]=="O" || board[1]=="O" && board[4]=="O" && board[7]=="O"
    puts "O wins!!"
  elsif board[6]=="O" && board[7]=="O" && board[8]=="O" || board[2]=="O" && board[5]=="O" && board[8]=="O"
    puts "O wins!!"
  elsif board[2]=="X" && board[4]=="X" && board[6]=="X" || board[0]=="X" && board[4]=="X" && board[8]=="X"
    puts "X wins!!"
  elsif board[2]=="O" && board[4]=="O" && board[6]=="O" || board[0]=="O" && board[4]=="O" && board[8]=="O"
    puts "O wins!!"
  else

  end

end

display_board(board)
counter = 0

loop do
#Loops through X and O moves
puts "Where would you like to move X? Enter a space number on the board 1-9."
inputx = gets.to_i
counter += 1

board[inputx-1] = "X"
display_board(board)



winner(board)

if counter == 9
  break
end

puts "Where would you like to move O? Enter a space number on the board 1-9."
inputo = gets.to_i
counter += 1


board[inputo-1] = "O"
display_board(board)

winner(board)

end

#Option to play again
puts "Would you like to play again? (y or n)"
play_again = gets.chomp
play_again.downcase

break if play_again == "n"
end
#ends play_again loop

puts "Thanks for playing."
puts "*******************"
