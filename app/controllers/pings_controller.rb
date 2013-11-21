class PingsController < ApplicationController

	def index
		@users = User.all.order("priority_order ASC")
	end
end
