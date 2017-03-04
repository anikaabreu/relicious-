class SessionsController < ApplicationController
  def create
    # omniauth middleware stores oauth data in the
    # request.env (not in params)
    auth = request.env["omniauth.auth"]


    # if user exists, log her in
    # else, create the user, and log her inrails
    if auth['provider'] == "facebook"
      user = User.find_by(facebook_id: auth['uid']) ||
        User.create_from_facebook(auth)
    end

    session[:user_id] = user.id
    redirect_to root_url, notice: "Signed In!"
  end

  # logout
  def destroy
    reset_session
    redirect_to root_url, notice: 'Signed out!'
  end
end
