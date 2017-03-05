class FacebookApi < ApplicationRecord
  def self.profile(token)
    url = "https://graph.facebook.com/me"
  url += "?access_token=#{token}"
  url += "&fields=name, email"
  HTTParty.get(url).parsed_response
  end
end
