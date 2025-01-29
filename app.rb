require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
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
    @they = "paper"
    @outcome = "won"
  end
  @we_play = "We played rock!"
  @they_play = "They played #{@they}!"
  @outcome_mssg = "We #{@outcome}!"
erb(:rock)
end
