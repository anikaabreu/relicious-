namespace :facebook do
  desc "Updates FB Profile"
  task profile: :environment do
    #User.find(...)by_token
    token = ""
    url = "https://graph.facebook.com/me"
    url += "?access_token=#{token}"
    url += "&fields=name, email"
    profile = HTTParty.get(url).parsed_response
  end

end
