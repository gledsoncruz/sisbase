class UsersController < ApplicationController


	def logged
    	@users = User.where('last_request_at >= ?', 5.minutes.ago.utc)
    	respond_to do |format|
    	  	format.html
      		format.json { render :json => @users }
      		format.xml { render :xml => @users }
    	end
	end


	# private

	#   def user_params
	#     params.require(:user).permit(:name, :last_sign_in_at)
	#   end

end
