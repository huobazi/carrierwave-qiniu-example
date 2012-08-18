# encoding: utf-8

::CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = "rJ2cC5tKdpA74P-pJPnADWBEZQ39fFSRv3udaGMu"
  config.qiniu_secret_key    = 'Aeuc1BxLvrOIvp-kBQ4v96rCyDsSC-tYDkxlVBKv'
  config.qiniu_bucket        = "carrierwave-qiniu-example"
  config.qiniu_bucket_domain = "carrierwave-qiniu-example.aspxboy.com"
end