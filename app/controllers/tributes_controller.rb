class TributesController < ApplicationController
	def index
		@tributes = Tribute.all
	end
end
