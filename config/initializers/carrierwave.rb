require 'carrierwave'

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    # :aws_access_key_id      => 'AKIAJIQFP5GZLS6VHV6A',                        # required
    # :aws_secret_access_key  => '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',                        # required

    :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],                        # required
    :aws_secret_access_key  => ENV['AWS_SECRET_KEY'],                        # required    
    :region                 => 'us-east-1',                  # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }

  config.fog_directory  = 'shopzassets'                     # required
  # config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end