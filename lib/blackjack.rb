def welcome #passed test 1
    puts "Welcome to the Blackjack Table"
end

def deal_card #passed test 1
    rand(1..11)
end

def display_card_total(card_total) #passed test 2
    puts "Your cards add up to #{card_total}"
end

def prompt_user #passed test 1
    puts "Type 'h' to hit or 's' to stay"
end

def get_user_input #passed test 1
    input = gets.chomp
end

def end_game(card_total) #passed test 2
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round #passed test 3
    sum = deal_card + deal_card
    display_card_total(sum)
    sum
end

def hit?(card_total)
    prompt_user
    input = get_user_input #passed test 4
    new_card_total = 0
    
    if input == "h"
        new_card_total = card_total + deal_card #passed test 6
        elsif input == "s"
        new_card_total = card_total
        else
        invalid_command
    end
    new_card_total
end

def invalid_command
    puts "Please enter a valid command: 's' or 'h'"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
    first_card_total = initial_round
    card_total = 0
    until card_total > 21
        new_total = hit?(first_card_total)
        card_total += new_total
        display_card_total(card_total)
    end
    end_game(card_total)
end