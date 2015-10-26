class AdminController < ApplicationController
	before_filter :authenticate_user!
	before_action :require_admin
	def login
		
	end




  private
  def require_admin
   if !current_user.try(:admin?)
      flash[:error] = "You must be logged as admin to access this section"
      redirect_to root_path # halts request cycle
    end
  end
end
