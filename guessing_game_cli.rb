# Code your solution here!
require 'pry'

def generate_number
  rand(6) + 1
end

def prompt_user_for_guess
  puts "Please enter a number from 1 to 6, or 'exit' to exit."
  
  guess = gets.chomp
  puts "Your guess was #{guess}"
  binding.pry
  if guess.downcase == 'exit'
    return 'exit'
  else 
    until '"1"2"3"4"5"6"'.include?(guess)
      puts "Sorry, that's not a number from 1 to 6! Please enter a number from 1 to 6."
      guess = gets.chomp
    end
    if '123456'.include?(guess)
      return guess.to_i
    else
      return guess[1].to_i
    end
  end
end

def run_guessing_game
  again = true
  while again
    computer_num = generate_number
    person_num = prompt_user_for_guess
    if person_num == 'exit'
      again = false
    elsif computer_num == person_num
      puts "You guessed the correct number!"
    else
      puts "Sorry! The computer guessed #{computer_num}."
    end
  end
  puts "Goodbye!"
end