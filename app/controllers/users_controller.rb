class UsersController < ApplicationController


	def logged
    	@users = User.where('users.last_request_at >= ?', 5.minutes.ago.utc)
    	respond_to do |format|
    	  	format.html
      		format.json { render :json => @users }
      		format.xml { render :xml => @users }
    	end
	end

end
