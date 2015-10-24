class TributesController < ApplicationController
	def index
		@tributes = Tribute.all(:saying).page(params[:page]).per(10)
	end

	def new
		@tributes = Tribute.new
	end

	def create
		Tribute.create(tribute_params)
		redirect_to root_path
	end

	private
	def tribute_params
		params.require(:tribute).permit(:saying, :contributor)
	end
end
