class User < ApplicationRecord

has_secure_password

  def self.create_from_facebook(auth)
    User.create!(
      facebook_id: auth['uid'],
      name: auth['info']['name'],
      email: auth['info']['email'],
      user_likes: auth['info']['user_likes']
    )
  end

end
