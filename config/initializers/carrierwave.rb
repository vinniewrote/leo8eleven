CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV['AWS_Access_Key_Id'],                        # required
    aws_secret_access_key: ENV['AWS_Secret_Key'],                        # required
    region:                ENV['AWS_REGION']                   # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV['S3_BUCKET']                         # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = {} # optional, defaults to {}
end
