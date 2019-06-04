require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do

    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @squared = @number.to_i * @number.to_i
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @array = []
    @number.to_i.times do
      @array << @phrase
    end
    @array.collect do |entry|
      "#{entry} "
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @number = params[:number]
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @array = [@word1, @word2, @word3, @word4, @word5]
    @array.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    if @operation == "add"
      @add = @number1.to_i + @number2.to_i
      @add.to_s
    elsif @operation == "subtract"
      @subtract = @number1.to_i - @number2.to_i
      @subtract.to_s
    elsif @operation == "multiply"
      @multiply = @number1.to_i * @number2.to_i
      @multiply.to_s
    elsif @operation == "divide"
      @divide = @number1.to_i / @number2.to_i
      @divide.to_s
    end
  end

end
