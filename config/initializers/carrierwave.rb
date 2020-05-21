# encoding: utf-8

::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "ak"
  config.qiniu_secret_key    = 'sk'
  config.qiniu_bucket        = "carrierwave-qiniu-example"
  config.qiniu_bucket_domain = "carrierwave-qiniu-example.aspxboy.com"
  config.qiniu_bucket_private= true #default is false
  #config.qiniu_up_host      = 'http://up.qiniug.com' #七牛海上传外服务器
end
