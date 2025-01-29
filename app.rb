require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

get("/") do
  erb(:home)
end

get("/rock") do
  @random = rand(1..3)
  if @random == 1
    @they = "rock"
    @outcome = "tied"
  elsif @random == 2
    @they = "paper"
    @outcome = "lost"
  else
    @they = "scissors"
    @outcome = "won"
  end
  @we_play = "We played rock!"
  @they_play = "They played #{@they}!"
  @outcome_mssg = "We #{@outcome}!"
erb(:rock)
end

get("/paper") do
  @random = rand(1..3)
  if @random == 1
    @they = "rock"
    @outcome = "won"
  elsif @random == 2
    @they = "paper"
    @outcome = "tied"
  else
    @they = "scissors"
    @outcome = "lost"
  end
  @we_play = "We played paper!"
  @they_play = "They played #{@they}!"
  @outcome_mssg = "We #{@outcome}!"
erb(:paper)
end

get("/scissors") do
  @random = rand(1..3)
  if @random == 1
    @they = "rock"
    @outcome = "lost"
  elsif @random == 2
    @they = "paper"
    @outcome = "won"
  else
    @they = "scissors"
    @outcome = "tied"
  end
  @we_play = "We played scissors!"
  @they_play = "They played #{@they}!"
  @outcome_mssg = "We #{@outcome}!"
erb(:scissors)
end
