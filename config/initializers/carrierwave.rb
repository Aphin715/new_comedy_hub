CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AKIAJBDNWB72QN7FI3AQ'],
    aws_secret_access_key: ENV['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']
  }
  config.fog_directory  = "parking-#{Rails.env}"
end