class PingsController < ApplicationController

	def index
		@users = User.all
	end
end
