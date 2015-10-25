class TributesController < ApplicationController
	def index
		@tributes = Tribute.all.page(params[:page]).per(10)
	end

	def new
		@tributes = Tribute.new
	end

	def create
		@tribute = Tribute.create(tribute_params)
		if @tribute.invalid?
			flash[:error] = '<strong> Could not save</strong> the data you entered is invalid'
		end
		redirect_to root_path
	end

	private
	def tribute_params
		params.require(:tribute).permit(:saying, :contributor)
	end
end
