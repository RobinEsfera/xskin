class PageController < ApplicationController
	before_action :authenticate_user!, :except => [:home,:store,:apple_watch,:iphone6,:make,:top_design,:demo,:faq,:privacy,:developer,:terms,:testimonial,:contact,:spotting,:careers]
	def home

	end
	def demo
	  @arrHomeSliders = HomeSlider.all
	end

	def store
		
	end
	def apple_watch
		
	end
	def iphone6
		
	end
	def make

	end
	def gallery
		
	end
	def invite
		
	end
	def promotion
		
	end
	def top_design
		
	end
	def testimonial
		
	end
	def affiliate
		
	end
	def select_currency
		if params[:selected_currency]
			cookies[:currency] = {
				   :value => params[:selected_currency],
				   :expires => 1.year.from_now
				 }
			flash[:success]="Sucessfully selected the currency.";
			redirect_to request.referrer
		else
			flash[:error]="Please select currency";
			redirect_to request.referrer
		end
	end
	def privacy
		
	end
	def developer
		
	end
	def careers
		
	end
	def terms

	end
	def faq
		
	end
	def contact
		
	end
	def spotting
		
	end
end
