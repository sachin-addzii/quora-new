class UsersController < ApplicationController
	def follow
    @user = User.find(params[:id])
    if current_user == @user
    	flash[:alert] = "Can't follow youself."
    elsif current_user.follow(@user)
      flash[:notice] = "You started following #{@user.email}."
    else
      flash[:alert] = 'Already following.'
    end
    redirect_to request.referer
	end
end
