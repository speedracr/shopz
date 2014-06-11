require 'carrierwave'

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIL57Q7I7PUIQDTIQ',                        # required
    :aws_secret_access_key  => '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',                        # required
    :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'rhopz'                            # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end