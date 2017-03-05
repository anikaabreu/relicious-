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

    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
  end

  # logout
  def destroy
    reset_session
    redirect_to root_url, notice: 'Signed out!'
    session[:user_id] = nil
   redirect_to '/login'
  end
end
