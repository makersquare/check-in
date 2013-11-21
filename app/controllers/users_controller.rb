class UsersController < ApplicationController
	def show
		@user = User.find(user_params[:id])
		@ping = Ping.new
	end

	def ping
		#get the user by getting the id from params
		@user = User.find(user_params[:id])
		#trigger model method for doing logic ping(user_object, guest_name_input)
		@ping = Ping.new(user: @user, message: user_params[:ping][:message])
		if @ping.save
			redirect_to root_path, notice: "Your Ping has been sent!"
			#redirect back to pings index with some sort of flash message of success
			#or we can just render a result view
		else
			#redirect back to user show page with error
		end
	end

	private

	def user_params
		params.permit(:id, {:ping =>:message})
		# params.permit(:ping)
		#.permit(ping: [:message])
	end
end
