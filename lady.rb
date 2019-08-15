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
class Order
  def initialize
    greeting
  end
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
    puts "1.) Hamburger $10.00"
    puts "2.) Grilled Cheese $11.00"
    puts "3.) House Salad $10.00"
    puts "4.) Soup Special $13.00"
    answer = gets.to_i
    case answer
      when 1
        @main_meal = "Hamburger"
        @main_total = 10
      when 2
        @main_meal = "Grilled Cheese"
        @main_total = 11
      when 3
        @main_meal = "House Salad"
        @main_total = 10
      when 4
        @main_meal = "Soup Special"
        @main_total = 13
      else
        puts "Sorry that is not an option please choose 1-4."
        exit
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
    case side1
      when 1
        @side_meal = "Side dish 1"
        @total = 6
      when 2
        @side_meal = "Side dish 2"
        @total = 6
      when 3
        @side_meal = "Side dish 3"
        @total = 5
      when 4
        @side_meal = "Side dish 4"
        @total = 7
      else
        puts "Sorry that is not an option"
        exit
    end
    side2 = gets.to_i
    case side2
      when 1
        @side_meal_2 = "Side dish 1"
        @new_total = 6
      when 2
        @side_meal_2 = "Side dish 2"
        @new_total = 6
      when 3
        @side_meal_2 = "Side dish 3"
        @new_total = 5
      when 4
        @side_meal_2 = "Side dish 4"
        @new_total = 7
      else
        puts "Sorry that is not an option"
        exit
    end
    @side_total = @new_total + @total
    @grand_total = @side_total + @main_total
    puts "Main dish is a #{@main_meal}"
    puts "First side is a #{@side_meal}"
    puts "Second side is a #{@side_meal_2}"
    puts "the total is for the sides are $#{@side_total.to_f}"
    puts "So that puts your whole total to $#{@grand_total}"
  end
end
Order.new
