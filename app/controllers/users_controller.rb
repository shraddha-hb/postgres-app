class UsersController < ApplicationController
	def index
    @users = User.all
  end
  def show
  	#test
    @user = User.find(params[:id])
  end
end
