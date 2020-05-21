This is a example project for [carrierwave-qiniu](https://github.com/huobazi/carrierwave-qiniu)

You'll need to configure it in config/initializes/carrierwave.rb

```ruby
::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "your qiniu access_key"
  config.qiniu_secret_key    = 'your qiniu secret_key'
  config.qiniu_bucket        = "carrierwave-qiniu-example"
  config.qiniu_bucket_domain = "carrierwave-qiniu-example.yourdomain.com"
end
```

For more information on `qiniu_bucket_domain`, please read http://docs.qiniutek.com/v3/sdk/ruby/#publish
