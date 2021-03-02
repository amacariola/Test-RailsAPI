class AuthenticationController < ApplicationController
   skip_before_action :authenticate_request
   
   def authenticate
     login = AuthenticateUser.call(params[:email],params[:password])
     if login.success?
        render json: { auth_token: login.result}
     else
        render json: { error: login.errors},status: :unauthorized
     end
   end
end
