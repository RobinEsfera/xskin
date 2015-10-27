class CallbacksController < Devise::OmniauthCallbacksController
    def facebook
    	auth=request.env["omniauth.auth"]
    	email=auth["info"].email
    	
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.where(:email=>email).first
    # render :plain => @user.inspect
    if @user
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
    	user = User.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )

      sign_in_and_redirect user
    end
    end
    def instagram
    	render :plain => request.env["omniauth.auth"].to_json

        # @user = User.from_omniauth(request.env["omniauth.auth"])
        # sign_in_and_redirect @user
    end
end