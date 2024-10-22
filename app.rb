require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:new_square_calc)
end

get ("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end


get("/square_root/new") do
  erb(:square_root_calc)
end

get("/square_root_result") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** (0.5)
  erb(:square_root_result)
end

get("/random/new") do 
  erb(:random_calc)
end

get ("/random_result") do
  @the_min = params.fetch("user_min").to_f
  @the_max = params.fetch("user_max").to_f
  @the_result = rand(@the_min..@the_max)
  erb(:random_result)
end

get("/payment/new") do 
  erb(:payment_calc)
end

get("/payment_result") do 
  @t_apr = params.fetch("user_apr").to_f
  @t_years = params.fetch("user_years").to_f
  @t_principal = params.fetch("user_pv").to_f
  @the_result = 
  erb(:payment_result)
end
