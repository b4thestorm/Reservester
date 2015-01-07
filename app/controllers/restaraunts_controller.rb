class RestarauntsController < ApplicationController
	#before_action :require_user, except: [:index, :show]


def index
	@restaraunts = Restaraunt.all
	@categories = Category.all
end

###################################################
def show
	@restaraunt = Restaraunt.find(params[:id])
	@reservation = Reservation.new
	
end


###################################################
def new
	@restaraunt = Restaraunt.new
end


###################################################
def create


	@restaraunt = Restaraunt.new(rest_params)
	@restaraunt.user = current_user

	if @restaraunt.save
		redirect_to @restaraunt 
	else
		render 'new'
	end
end


###################################################
def edit
	@restaraunt = Restaraunt.find(params[:id])
end


###################################################

def update
	
		@restaraunt = Restaraunt.find(params[:id])
		
		if @restaraunt.update(rest_params)
    		redirect_to @restaraunt
  		else
    		render 'edit'
  		end
end


###################################################
def destroy
		@restaraunt = Restaraunt.find(params[:id])
		@restaraunt.destroy
		redirect_to restaraunts_path
end
###################################################
private 

def rest_params
 		params.require(:restaraunt).permit(:name, :description, :address, :number, :avatar,:avatar_cache,:menu, category_ids:[])
end
end