class CategoriesController < ApplicationController

	def index
	@categories = Category.all
	end

	def show
	@category = Category.find(params[:id])
	@restaraunt = Restaraunt.find(params[:id])

	end

	def new
	@category = Category.new
	end

	def create
	@category = Category.new(category_params)
    
    if @category.save
        flash[:notice] = 'New category has been added'
        redirect_to root_path
	else
		render :new
	end
end

	private

	def category_params
		params.require(:category).permit(:name)
	end

end