def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1..11).to_a.sample
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
    gets
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  round = deal_card + deal_card
  display_card_total(round)
  return round
end

def hit?(number)
  valid_inputs = ['h', 's']
  
  prompt_user
  input = get_user_input
  until valid_inputs.include?(input)
    invalid_command
    prompt_user
    input = get_user_input
  end

  if input == 'h'
    number += deal_card
  end
  number
    
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
    
