class TributesController < ApplicationController
	def index
		@tributes = Tribute.all
	end

	def new
		@tributes = Tribute.new
	end
end
