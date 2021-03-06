 class UsersController < ApplicationController
 before_action :set_user, only: [:show,:edit,:update]


def new
	@user = User.new
end

def create
	@user = User.new(user_params)

	if @user.save
		flash[:notice] = 'You are now registered'
		redirect_to root_path
	else
		render :new
	end

end

def show;end

def edit;end

def update
if @user.update(user_params)
flash[:notice] = "Your profile has been saved"
redirect_to user_path(current_user)
else
render :edit
end
end
	
private

def user_params
	params.require(:user).permit(:username,:email,:password)
end

def set_user
@user = User.find(params[:id])
end

end