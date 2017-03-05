class FacebookController < ApplicationController
  def token
    #  render json:params
    token = params[:token]
    # url = "https://graph.facebook.com/me"
    # url += "?access_token=#{token}"
    # url += "&fields=name, email"
    profile = FacebookApi.profile(params[:token])

    #is this an old user?
    user =User.find_by facebook_id: params[:id]


    #registering a new user
    user = User.new
    user.name = profile['name']
    user.name = profile['email']
    user.save

    #logging in a user
    render json: profile
   end
end
