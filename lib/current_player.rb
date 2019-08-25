
#strategy 2: increase the counter by 1 for any moves
def turn_count(board)
  x = 0 
  board.each do |position|
    if position == "X" || position == "0"
      x += 1 
    end
  end
  return x
end

#objective is to deduce whose turn it is, leveraging the fact that we know how many turns have happened already
def current_player(board)
  if turn_count(board) % 2 == 0 || turn_count(board) == 0 
    return "X"
  else
    return "O"
  end
end