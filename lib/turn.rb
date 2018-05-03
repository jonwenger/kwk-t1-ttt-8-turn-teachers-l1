#board = ["O", "X", " ", " ", "X", " ", "X", "O", " "]
index = 0

def turn(board)
  index=input_to_index
  if valid_move?(board,index) == true
    move(board,index)
  else puts "that's not a valid move"
    turn(board)
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, num)
  if board[num]== " " || board[num]== "" || board[num]== nil
  false
  else
  true
  end
end

def valid_move?(board, index)
  num = index
  if position_taken?(board,num)==true || num.between?(0,8)==false
  false
  else
  true
  end
end

def input_to_index
  puts "Please enter 1-9:"
  input = gets.strip
  index = (input.to_i-1)
  return index
      end

 def move (board, index, value = "X")
  board[index]= value
  display_board(board)

end
