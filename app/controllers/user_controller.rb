class UserController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    puts "je suis rentré ds crezate"
    puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
    @user = User.new(
      first_name: params[:first_name], 
      last_name: params[:last_name], 
      email: params[:email], 
      city: City.find_by_name(params[:city]), 
      age: params[:age], 
      description: params[:description], 
      password: params[:password]
      )
    if @user.save
      redirect_to gossip_index_path
    else
      render user_new_path
    end
  end

end

