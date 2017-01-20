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
  	render :text =>'Destroyed the session!'
  	session.clear
  end

  # def new
  # render :text =>"Say Heloo to Joe!"
  # end

  def edit
  redirect_to '/say/hello/new'

  end

end


---------------------------------------------------------

Rails.application.routes.draw do
  get 'say/hello'

  get 'hellos/index'

    root 'say#create'

  resources :hello

  post "hellos" => "hellos#hello"

  

  resources :say

  post "say" => "say#create"


  resources :say, path: '/say/hello'

  post "say" => "say/hello#new"

  post "say" => "say/hello#show"


  resources :say, path: '/times'

  post "say" => "times#reset"