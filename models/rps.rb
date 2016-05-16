
class Game 
	attr_accessor :weapon, :computer_win, :human_win

	def initialize
		@weapon
		@human_win = 0
		@computer_win = 0
	end

	def game_time

		@computer = ["rock", "scissors", "paper"].sample

		if @computer == "rock" && @weapon == "scissors" 
			 result = "Computer wins! Try again"
		elsif @computer == @weapon
			 result = "It's a tie! Try again"
		elsif @computer == "scissors" && @weapon == "paper"
			 result = "Computer wins! Try again"
		elsif @computer == "paper" && @weapon == "rock"
			 result = "Computer wins! Try again"
		elsif @computer == "scissors" && @weapon == "rock"
			 result = "You win! Try again"
		elsif @computer == "paper" && @weapon == "scissors"
			 result = "You win! Try again"
		elsif @computer == "rock" && @weapon == "paper"
			 result = "You win! Try again"
		end

		if result == "You win! Try again"
			@human_win+=1
		elsif result == "Computer wins! Try again"
			@computer_win+=1
		end

		return result
	end

		
	def best_of_three
		if @human_win==2 || @computer_win ==2
			return true
		end
	end


end



