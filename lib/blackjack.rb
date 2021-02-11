require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  message = display_card_total(card_total)
  print message
  card_total
end

def hit?(total)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    new_total = deal_card + total
    return new_total
    elsif answer == 's'
    return total
    else
    invalid_command
    prompt_user
    get_user_input
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  card_total = initial_round
  until card_total > 21 
  card_total = hit?(card_total) 
  display_card_total(card_total)
end
end_game(card_total)
end
    
