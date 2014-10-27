class RestarauntsController < ApplicationController

def index
	@restaraunts = Restaraunt.all 
end

#<https://maps.googleapis.com/maps/api/staticmap?parameters>
#/////////Condense the link to a button in the view that automatically 
#{generates a map using the CGI.escape().strip command.... /////////}

###################################################
def show
	@restaraunt = Restaraunt.find(params[:id])
end


###################################################
def new
	@restaraunt = Restaraunt.new
end


###################################################
def create
	@restaraunt = Restaraunt.new(rest_params)

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
 		params.require(:restaraunt).permit(:name, :description, :address, :number, :avatar)
end
end