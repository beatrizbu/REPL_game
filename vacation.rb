module Vacation_In_Venice

#displays introduction text to the user
def introduction
  puts <<-END
      Good morning! You are enjoying some well deserved
      vacation time in beautiful Venice, Italy!
      END
end


#method to repeat the base option text for user
def show_options
  puts "What would you like to do?"
    yield
  puts "Enter the letter corresponding with your choice."
end

#method for adding a little timing between choice and new options
def going
    on_our_way = ["...", "Here", "we", "go!", "..."]
    puts on_our_way.cycle(1) {|counting| puts counting; sleep 0.5}
end

#method if user chooses to stay in the next day
def end_game
  puts "Thank you for playing."
end

#method to start game over
def tomorrow_options
  puts "Before you nod off, let's talk about your plans for tomorrow."
    show_options{
    puts <<-END
      (V)enture out again.
      (S)pend the day relaxing at the hotel.
    END
    }
      case gets.chomp.downcase
      when "v"
        puts "Awesome! Vacation will be gone before you know it!"
          introduction{}
          body_of_game{}
      when "s"
        puts "Enjoy your downtime!"
        end_game{}
      else
        puts "Personally, I think you should stay in and study ENGLISH!"
        tomorrow_options
      end
end

#method to wind down day

def conclude_day_venice
  puts <<-END
What now...?
      (H)ead back to the hotel to grab a shower and call it a day.
      (G)rab a 'to go' glass o' wine and watch the sunset by the Grand Canal
      before heading back to the hotel.
      (S)hop 'til you drop and drag yourself and purchases wearily back
      to the hotel.
Enter the letter corresponding with your choice.
      END

    case gets.chomp.downcase
    when "h"
      puts "That's probably a good idea! It's only the first day..."
      tomorrow_options
    when "g"
      puts <<-END
      Wasn't the sunset incredible!? Just think you still have
      several days left to experience it again!...
      END
      tomorrow_options

    when "s"
      puts <<-END
      Personally I like to shop on Amazon from the couch but to each
      his own. The exercise means you should sleep well tonight!...
      END
      tomorrow_options
    else
      puts "Please learn to read the instructions!"
      conclude_day_venice
    end
end

#displays options for pigeon excursion
def pigeon_options
puts <<-END
What would you like to do?
      (T)ake a picture of the tourists feeding the pigeons
      (F)eed the pigeons
      (N)evermind, this is terrifying! Leave now!
      Enter the letter corresponding with your choice.
END
  case gets.chomp.downcase
  when "t"
    puts "Seriously? What are you ever going to do with a picture of pigeons?!"
    conclude_day_venice
  when "f"
    puts <<-END
    Splat! A pigeon...no wait, \"any number\" of pigeons just pooped on
    your head. Haha! What did you think would happen?
    END
    conclude_day_venice
  when "n"
    puts "Good call! Pigeons are evil! No good can come from staying..."
    conclude_day_venice
  else
    puts "You're a real rulebreaker aren'tcha! Perhaps you should go back
    to the US!"
    pigeon_options
  end
end

# displays options for gondola excursion
def gondola_options
    puts <<-END
What would you like to do?
      (P)ut your seasickness bands on and go for it!
      (C)hicken out and sit by the canal watching the other romantic couples
      float by.
      (S)putter indignantly at the outrageous $90 price for a mere 40 minutes
      and briskly about-face.
Enter the letter corresponding with your choice.
      END
      case gets.chomp.downcase
      when "p"
        puts <<-END
      Not a bit of seasickness and an incredible experience!
      Aren't you glad you came?!"
      END
        conclude_day_venice {}


      when "c"
        puts <<-END
      Really? The water is barely moving... This is a \"once in a
      lifetime\" opportunity!!!
      END
        conclude_day_venice {}

      when "s"
        puts <<-END
      What's another hundreck bucks after the cost of the ticket to get
      here!? You need to live a little!
      END
        conclude_day_venice {}

      else
        puts "Please learn to read the instructions!"
        gondola_options
      end
end

# displays options for pizza excursion
def pizza_options
  puts <<-END
What would you like to do?
      (R)etreat inward to a zen like state and meditate.
      (G)et frustrated. \"I need my wine now!\""
      (A)muse yourself watching clumsy tourists and remind yourself that
      you are lucky to be in beautiful Venice.
Enter the letter corresponding with your choice.
      END
      case gets.chomp.downcase
      when "r"
        puts <<-END
      The waiter is afraid to disturb you from your zen state and
      you pass out from hunger! Fortunately, the fall from your chair did
      not do much damage.
      END
        conclude_day_venice {}

      when "g"
        puts <<-END
      The waiter finally approaches but trips and spills an entire
      pitcher of water all over your lap! Karma!
      END
        conclude_day_venice {}

      when "a"
        puts <<-END
      The manager himself approaches, apologizes and insists
      that you accept a complementary glass of wine.
      END
        conclude_day_venice {}

      else
        puts <<-END
      You seem to be a tad bit challenged when it comes
      to reading instructions.
      END
        pizza_options
      end
end

#contains the body of the game

def body_of_game
  show_options {
    puts <<-END
      (G)o to St. Marks square and feed the pigeons.
      (F)ind a gondola nearby and go for a ride.
      (E)at pizza and drink wine in the plaza.
      END
      }
      case gets.chomp.downcase
      when "g"
          puts "Hmmm... thats an \"interesting\" choice."
          going {}
          puts "Ok... we're here!"
          pigeon_options{}

      when "f"
          puts "Feeling brave are we? You get seasick in the shower!"
          going {}
          puts <<-END
      \"Ciao, benvenuto!\" says the gondolier, \"Please, please sit.\"
      \"I will sing now.\"
          END
          gondola_options

      when "e"
          puts "Yum! Pizza sounds good. "
          going {}
          puts <<-END
      The cafe smells amazing...
      Unfortunately there is only one overworked waiter
      who shows no sign of coming over any time soon.
      You're going to have to pass the time somehow...
      END
          pizza_options
        else
          puts <<-END
          Nope sorry, this isn't Burger King and you cannot \"Have it your
          way!\" Try again!
          END
          body_of_game
          gets.chomp.downcase
        end
end
end
