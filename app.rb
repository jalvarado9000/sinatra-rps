require "sinatra"
require "sinatra/reloader"


get("/") do
  erb(:home)
end

get("/rock") do
  @yourMove = "rock"
  moves = ["rock", "paper", "scissors"]
  @pcMove = moves.sample

  if @pcMove == "rock"
    @result = "tied!"
  elsif @pcMove == "paper"
    @result = "lost!"
  else
    @result = "won!"
  end

  erb(:zebra)

end

get("/paper") do
  @yourMove = "paper"
  moves = ["rock", "paper", "scissors"]
  @pcMove = moves.sample



  if @pcMove == "paper"
    @result = "tied!"
  elsif @pcMove == "scissors"
    @result = "lost!"
  else
    @result = "won!"
  end

  erb(:zebra)
end

get("/scissors") do
  @yourMove = "scissors"
  moves = ["rock", "paper", "scissors"]
  @pcMove = moves.sample



  if @pcMove == "scissors"
    @result = "tied!"
  elsif @pcMove == "rock"
    @result = "lost!"
  else
    @result = "won!"
  end

  erb(:zebra)
end
