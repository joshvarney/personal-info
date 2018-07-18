require 'sinatra'

get '/' do 
	erb :name
end

post '/name' do
first_name = params[:first_name]
last_name = params[:last_name]
redirect '/home_address?first_name=' + first_name + '&last_name=' + last_name
end
get '/home_address' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	erb :home_address, locals:{first_name: params[:first_name], last_name: params[:last_name]}
end
post '/home_address' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	address = params[:address]
	city = params[:city]
	state = params[:state]
	zip = params[:zip]
	erb :home_address, locals:{first_name: params[:first_name], last_name: params[:last_name]}
	redirect '/fav_numbers?first_name=' + first_name + '&last_name=' + last_name + '&address=' + address + '&city=' + city + '&state=' + state + '&zip=' + zip
end
get '/fav_numbers' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	address = params[:address]
	city = params[:city]
	state = params[:state]
	zip = params[:zip]
	fav_num1 = params[:fav_num1]
	fav_num2 = params[:fav_num2]
	fav_num3 = params[:fav_num3]
	erb :fav_numbers, locals:{first_name: params[:first_name], last_name: params[:last_name], address: params[:address], city: [:city], state: params[:state], zip: params[:zip]}
	end
post '/fav_numbers' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	address = params[:address]
	city = params[:city]
	state = params[:state]
	zip = params[:zip]
	fav_num1 = params[:fav_num1]
	fav_num2 = params[:fav_num2]
	fav_num3 = params[:fav_num3]
	erb :fav_numbers, locals:{first_name: params[:first_name], last_name: params[:last_name], address: params[:address], city: [:city], state: params[:state], zip: params[:zip]}
	redirect '/final_page?first_name=' + first_name + '&last_name=' + last_name + '&address=' + address + '&city=' + city + '&state=' + state + '&zip=' + zip + '&fav_num1=' + fav_num1 + '&fav_num2=' + fav_num2 + '&fav_num3=' + fav_num3
end
get '/final_page' do
	first_name = params[:first_name]
	last_name = params[:last_name]
	address = params[:address]
	city = params[:city]
	state = params[:state]
	zip = params[:zip]
	fav_num1 = params[:fav_num1]
	fav_num2 = params[:fav_num2]
	fav_num3 = params[:fav_num3]
erb :final_page, locals:{first_name: params[:first_name], last_name: params[:last_name], address: params[:address], city: [:city], state: params[:state], zip: params[:zip], fav_num1: params[:fav_num1], fav_num2: params[:fav_num2], fav_num3: params[:fav_num3]}
end