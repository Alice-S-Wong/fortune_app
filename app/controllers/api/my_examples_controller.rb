class Api::MyExamplesController < ApplicationController

  def fortune_method
    random_number = rand(3)
    if random_number == 0
      @fortune = "You will get 100 apples."
    elsif random_number == 1
      @fortune = "You will go on a vacation."
    elsif random_number == 2
      @fortune = "You will be scared off by snakes."
    end

    lucky_numbers = []

    6.times do
      lucky_numbers << rand(1..60)
    end

    @lucky_numbers = lucky_numbers

    bottles = 99

    @lyrics = []

    while bottles > 2
      @lyrics << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
      bottles -= 1
      @lyrics << "Take one down and pass it around, #{bottles} bottles of beer on the wall."
    end

    @lyrics << "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
    bottles -= 1
    @lyrics << "Take one down and pass it around, #{bottles} bottle of beer on the wall."

    @lyrics << "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."
    bottles -= 1
    @lyrics << "Take one down and pass it around, no more bottles of beer on the wall."

    @lyrics << "No more bottles of beer on the wall, no more bottles of beer.
"
    @lyrics << "Go to the store and buy some more, 99 bottles of beer on the wall.

"

    render 'fortune.json.jb'
  end

end
