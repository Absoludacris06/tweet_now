get '/' do
  erb :index
end

post '/tweets' do
	@tweet = Twitter.update(params[:tweet])
	erb :_response_message, layout: false
end