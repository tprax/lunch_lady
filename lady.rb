#lunch lady
#user chooses a dish from a list
#user chooses two side dish items
#repeats user order
#totals order and displays it
#MUST USE CLASSES
#--------------------Sudo Code-----------------------
#display menu
#get user main dish
#display side menu
#get users side dishes
#store order
#calculate order total
#display order
#display total

def greeting
  puts "Hello Welcome to My Resturant!"
  puts "would you like a seat?"
  answer = gets.to_s.strip.downcase
  if answer == "yes"
    main_menu
  elsif answer == "no"
    puts "Okay Have a Great Day!"
    exit
  else
    puts "sorry that doesn't make sense."
  end
end

def main_menu
  puts "Here are you main dish for today."
  puts "1.) Main dish $10.00"
  puts "2.) Main dish $11.00"
  puts "3.) Main dish $10.00"
  puts "4.) Main dish $13.00"
  answer = gets.to_i
  case answer
    when 1
      puts "main dish one"
    when 2
      puts "main dish two"
    when 3
      puts "main dish three"
    when 4
      puts "main dish four"
  end
  side_menu
end

def side_menu
  puts "Here are our side dishes!"
  puts "1.) Side dish 1"
  puts "2.) Side dish 2"
  puts "3.) Side dish 3"
  puts "4.) Side dish 4"
  side1 = gets.to_i
  side2 = gets.to_i
  puts side1
  puts side2
end

def total_order
end

def displays
end

greeting
