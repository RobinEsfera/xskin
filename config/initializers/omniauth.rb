Rails.application.config.middleware.use OmniAuth::Builder do
	ENV['FACEBOOK_KEY']    ="469738219865576" # "140748252799489"
	ENV['FACEBOOK_SECRET'] ="5e8724d505e5afb107cfcd5ede525a17" #"070f9e2dc2679de3298e5d987c073c89"
	ENV['INSTAGRAM_ID']    ="ef88e07b23ee40b0aa2a0453248a98ab"
	ENV['INSTAGRAM_SECRET']="dfed6246c17a4c26ab1eae9956144e33"

  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
           scope: 'public_profile,email', info_fields: 'email,name,first_name,last_name'

provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET'],:scope =>'basic'



end