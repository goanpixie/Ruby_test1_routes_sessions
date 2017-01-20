class SayController < ApplicationController
  def hello
  end

  def create
  render :text =>"Say Helooooooooooo!"
    if session[:count].nil?
      session[:count] = 0
  else
  	puts "/n/n/n/n/n",session[:count] += 1,"/n/n/n/n/n"
  end
  end

  def new
  render :text =>"Say Heloo to Joe!"
  end

  def edit
  redirect_to '/say/hello/new'
  end

end
