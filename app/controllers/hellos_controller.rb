class HellosController < ApplicationController
  def index
  		@sers = User.all
  end
   def hello
  render :text =>"Hello Coding Dojo"
   end
end
