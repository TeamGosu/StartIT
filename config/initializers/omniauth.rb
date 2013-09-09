OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '538468816192418', '1c3f6f964243b4697723edf1cd55a457'
provider :identity
end