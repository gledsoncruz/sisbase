class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :admin_filter_registrations, :set_last_request_at

  rescue_from ActiveRecord::RecordNotFound do
  	render_404
  end

  def render_404
  respond_to do |format|
    format.html { render :file => "#{Rails.root}/public/404.html", :status => :not_found }
    format.xml  { head :not_found }
    format.any  { head :not_found }
   end
  end


	def admin_filter_registrations

     	if (controller_name == 'registrations' && action_name == 'new')
          redirect_to root_url
     	end
	end



  private

  def set_last_request_at
    current_user.update_attribute(:last_request_at, Time.now) if
    user_signed_in?
  end


end
