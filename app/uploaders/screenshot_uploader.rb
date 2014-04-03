# encoding: utf-8
require "digest/md5"
require 'carrierwave/processing/mini_magick'

class ScreenshotUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :qiniu
  self.qiniu_protocal = 'http'
  self.qiniu_can_overwrite = true

  # Override the directory where uploaded files will be stored.
  def store_dir
    "uploads/screenshots/2014/04/#{model.id}"
  end

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    "image.#{file.extension}" if original_filename.present?
  end

end

