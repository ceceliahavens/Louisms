class TributesController < ApplicationController
	before_action :authenticate_user!, :only => [:new, :create]
	
	def index
		@tributes = Tribute.all.page(params[:page]).per(10)
	end

	def new
		@tributes = Tribute.new
	end

	def create
		current_user.tributes.create(tribute_params)
		redirect_to root_path
	end

	def about
	end

	def show
		@tribute = Tribute.find(params[:id])
	end

	def edit
		@tribute = Tribute.find(params[:id])
	end

	def update
		  @tribute = Tribute.find(params[:id])
		  @tribute.update_attributes(tribute_params)
		  redirect_to root_path
	end

	def destroy
		@tribute = Tribute.find(params[:id])
		@tribute.destroy
		redirect_to root_path
	end


	

	private
	def tribute_params
		params.require(:tribute).permit(:saying, :contributor)
	end
end
