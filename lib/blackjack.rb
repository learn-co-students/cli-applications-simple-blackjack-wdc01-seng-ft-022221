def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  p rand(1..11)
end

def display_card_total(card_total)
  p card_total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  if card_total>21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  deal_card
  deal_card
  card_total=deal_card + deal_card
  p display_card_total(card_total)
    return card_total
end


def hit?(current_card_total)
  prompt_user
  user_input = get_user_input

  if user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  if user_input == "h"
    new_card = deal_card
    current_card_total += new_card
  elsif user_input == "s"
    current_card_total
  end
  return current_card_total

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
  until card_total > 21 #continue game until user loses
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total) #prints out once user has lost
end
