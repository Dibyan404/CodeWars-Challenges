=begin
Rock Paper Scissors(Control Freak)

<---1--->
def rps(p1, p2)
  return 'Draw!' if p1 == p2
  
  result = win_matrix[p1.to_sym][p2.to_sym]
  
  "Player #{result} won!"
end

def win_matrix
  { 
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
end
<---2--->
def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end
<---3--->
def rps(p1, p2)
  winning_moves = {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
  }    
  return 'Draw!' if p1 == p2
  winning_moves[p1] == p2 ? 'Player 1 won!' : 'Player 2 won!'
end
<---4--->
def rps  (p1, p2)
  return 'Draw!' if p1 === p2
  return "Player #{/rockscissors|scissorspaper|paperrock/ =~ p1+p2 ? 1 : 2} won!";
end
<---5--->
def rps(p1, p2)
  return 'Draw!' if p1 == p2
  
  r = 'rock'
  p = 'paper'
  s = 'scissors'
  
  w = 'Player '
  
  x = case p1
    when r
      p2 == s ? 1 : 2
    when p
      p2 == r ? 1 : 2
    when s
      p2 == p ? 1 : 2
  end
  
  w << x.to_s << ' won!'
  w
end

=end

def rps(p1, p2)

r = "rock"
p = "paper"
s = "scissors"
    
     if p1 == p2  
        "Draw!" 
     elsif p1 == s && p2 == p || p1 == p && p2 == r || p1 == r && p2 == s
        "Player 1 won!"
     else
        "Player 2 won!"
     end    
    
end
puts rps "rock" , "rock"
puts rps "paper" , "rock"
puts rps "scissor", "rock"