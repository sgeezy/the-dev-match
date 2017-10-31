class CallbacksController < ApplicationController
    def twitter
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end   
   
#   def create
#       user = User.from_omniauth(env["omniauth.auth"])
#       session[:user_id] = user.id
#       redirect_to root_url, notice: "Signed in!"
#   end
end