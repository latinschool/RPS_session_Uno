require 'sinatra'
require_relative 'models/rps.rb'
enable :sessions

get '/' do
	session.clear
	erb :index
end

	#OLD:
		# post '/' do
		# 	game = Game.new
		#	game.weapon = params[:player1_choice]
		# 	@result=game.game_time
		# 	@human_win = game.human_win
		# 	@computer_win = game.computer_win
		# 	erb :index
		# end

#NEW:
post '/' do
	if session[:game]
		game = session[:game]
		game.weapon = params[:player1_choice]
		@result = game.game_time

		@score = game.best_of_three

		@human_win = game.human_win
		@computer_win = game.computer_win

		if game.best_of_three
			@win = "We have a winner!"
		end

		erb :index

	else
		game = Game.new
		game.weapon = params[:player1_choice]
		@result = game.game_time
		@human_win = game.human_win
		@computer_win = game.computer_win

		session[:game] = game
		erb :index
	end
end




