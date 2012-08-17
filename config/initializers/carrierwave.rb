# encoding: utf-8

::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "sDjewj3wD3ruZiggLsUcq6MUryK5upRTDD_whQ2l"
  config.qiniu_secret_key    = 'DbrXiwrQekQNP4CcSfMu55ETgALw8_zA66o1Xuj2'
  config.qiniu_bucket        = "carrierwave-qiniu-example"
  config.qiniu_bucket_domain = "carrierwave-qiniu-example.aspxboy.com"
end