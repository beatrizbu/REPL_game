# maybe a hangman game?
# def get_guess
#   puts <<-END
#   The following letters are still available:
#   #{yield}
#   END
#   sleep 1
#   puts "Which letter do you want to guess?"
# end
#
# def checking
#   puts "\n\nchecking...\n\n"
#   sleep 1
# end
# def intro
#   puts <<-END
# It's time to play Hangman.
# Decide who will be the host and who will be guessing letters.
#     END
#     sleep 1
#     puts <<-END
# Host:
# You will win if the guesser runs out of life before guessing your word.
#     END
#     sleep 1
#     puts <<-END
# Guesser:
# You will win if you guess the host's word before your life runs out.
#     END
# end
require "./repl_game_methods.rb"
include ReplGameMethods

run_game
# while true
#   intro
#   # requests the "host" to enter a word to be guessed
#   sleep 1
#   puts "Please enter the host's name."
#   host_name=gets.chomp.capitalize
#   while (/[^a-zA-Z ]/===host_name)
#     puts "That's not a valid name"
#     sleep 1
#     puts "Lets try again."
#     sleep 1
#     puts "Please enter the host's name."
#     host_name=gets.chomp.capitalize
#   end
#   puts "Please enter the guesser's name."
#   guesser_name=gets.chomp.capitalize
#   while (/[^a-zA-Z ]/===guesser_name)
#     sleep 1
#     puts "That's not a valid name"
#     sleep 1
#     puts "Lets try again."
#     sleep 1
#     puts "Please enter the guesser's name."
#     guesser_name=gets.chomp.capitalize
#   end
#
#   sleep 1
#   puts "Hey #{host_name}! What's your word going to be?"
#   word=gets.chomp
#   while (/[^a-zA-Z]/===word)
#     puts "That's not a valid word. Words only have letters."
#     sleep 1
#     puts "Lets try again."
#     sleep 1
#     puts "Hey #{host_name}! What's your word going to be?"
#     word=gets.chomp
#   end
#   word_arr= word.split(//)
#   under_arr=[]
#   word_arr.length.times{ under_arr<<"_" }
#   30.times{puts "~~~~~\n"}
#
#   # p under_arr
#   # split word into array, fill new array with underscores,
#   # underscore array will be the same length as the word array
#
#   puts "Now pass the game to #{guesser_name}"
#   sleep 3
#   # then says "pass to guesser", (sleeps for 5 sec? before asking for a guess?)
#   # then says "start guessing"
#   # "life" variable starts at some number
#   life=6
#   # run a while loop if the underscore array is NOT the same as the word array
#   # AND life<0
#   puts "Hey #{guesser_name}, It's your turn."
#   available_letters=("a".."z").to_a
#
#   # first guess
#   # get_guess{available_letters}
#   # guess=gets.chomp
#   # while (/[^a-zA-Z]/===guess)||(guess.length>1)
#   #   puts "That's not a valid guess. You can only pick one letter."
#   #   puts "Lets try again."
#   #   get_guess{available_letters}
#   #   guess=gets.chomp
#   # end
#
#   # loop to run game
#   while !(under_arr===word_arr)&&(life>0)
#     case life
#     when 6
#       puts <<-END
#          ________
#          |      |
#          |
#          |
#          |
#          |
#     _____|___________
#
#       END
#
#     when 5
#       puts <<-END
#          ________
#          |      |
#          |      O
#          |
#          |
#          |
#     _____|___________
#
#       END
#
#     when 4
#       puts <<-END
#          ________
#          |      |
#          |      O
#          |      |
#          |
#          |
#     _____|___________
#
#       END
#
#     when 3
#       puts <<-END
#          ________
#          |      |
#          |      O
#          |     /|
#          |
#          |
#     _____|___________
#
#       END
#
#     when 2
#         puts <<-END
#            ________
#            |      |
#            |      O
#            |     /|\\
#            |
#            |
#       _____|___________
#
#         END
#
#       when 1
#         puts <<-END
#            ________
#            |      |
#            |      O
#            |     /|\\
#            |     /
#            |
#       _____|___________
#
#         END
#       end
#     puts  under_arr.join.scan(/.{1,1}/).join(' ')
#     # p word_arr
#     get_guess{available_letters}
#     guess=gets.chomp
#     while (/[^a-zA-Z]/===guess)||(guess.length>1)
#       puts "That's not a valid guess. You can only pick one letter."
#       sleep 1
#       puts "Lets try again."
#       sleep 1
#       get_guess{available_letters}
#       guess=gets.chomp
#     end
#     if not available_letters.include? guess
#       checking
#       puts "You've already guessed that. Try again"
#     else
#       available_letters-=[guess]
#       under_arr_new=[]
#       if word_arr.include? guess
#         i=0
#         checking
#         puts "Good guess! You got a letter!"
#         while i<word_arr.length
#           # p word_arr.length
#           if guess===word_arr[i]
#             under_arr_new<<guess
#             # p under_arr_new
#             # p "yes"
#           else
#             under_arr_new<<under_arr[i]
#             # p under_arr_new
#             # p "no"
#           end
#           i+=1
#           # p i
#
#
#         end
#         under_arr=under_arr_new
#       else
#         checking
#         puts " Sorry that letter is not in the word."
#         life-=1
#         sleep 1
#         puts "You have #{life} lives left."
#
#       end
#     end
#
#   end
# if life===0
#   sleep 2
#   puts <<-END
#      ________
#      |      |
#      |      O
#      |     /|\\
#      |     / \\
#      |
# _____|___________
#
#   END
#   puts "Sorry #{guesser_name}, you lose this round."
# end
# if under_arr===word_arr
#   sleep 2
#   puts "Congratulations #{guesser_name}! You win this round!"
# end
#   # before requesting each guess, a list of all available letters is printed
#   # after a letter is guessed, it is removed from the list
#   # if a previously guessed letter is picked,
#   # (i.e. if the letter is still on the "available letters" list),
#   # it responds, "you already tried that" and doesnt remove a "life"
#   # if a new letter is picked, (i.e. a letter still on the list),
#   # it checks that letter against each letter in the original word and
#   # if its there, it says "good guess" and replaces that index in the
#   # underscore array, otherwise it says "#{guess} is not in the word"
#   # and removes a "life"
#   #   life-=1 # currently there to prevent infinite loop
#   # end
#
#   # end with 'do you want to play again? ("yes" or "no")' where yes causes the while loop
#   puts "Do you want to play again?"
#   puts '"y" or "n"'
#   replay=gets.chomp
#   if replay==="y" || replay==="yes"
#     puts "Great! Let's start over!"
#   elsif replay==="n" || replay==="no"
#     puts "That's too bad. Come back soon!"
#     break
#     # to continue running and no leads to "break" and ends the loop
#   end
# end
#
# # things to add
#   # make sure names are alpha only
#   # make sure word is alpha only
#   # between guesses return the underscore array as a string that
#     # will appear to show where blanks are
#   #
