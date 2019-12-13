$redis = Redis.new

url = ENV["redis://rediscloud:r5cDiHtpXGJ3ajPpTkOD12Bp5tfjopnJ@redis-11588.c92.us-east-1-3.ec2.cloud.redislabs.com:11588"]

if url
  Sidekiq.configure_server do |config|
    config.redis = { url: url }
  end

  Sidekiq.configure_client do |config|
    config.redis = { url: url }
  end
  $redis = Redis.new(:url => url)
end
