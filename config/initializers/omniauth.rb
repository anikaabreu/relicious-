OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '629177267279104', 'a862d5993620d0c627ecdce683dfc43f'
end
