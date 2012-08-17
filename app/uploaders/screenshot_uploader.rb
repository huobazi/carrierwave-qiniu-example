# encoding: utf-8
require "digest/md5"
require 'carrierwave/processing/mini_magick'

class ScreenshotUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  storage :qiniu

  # Override the directory where uploaded files will be stored.
  def store_dir
    "uploads/screenshots/#{model.id}"
  end

  process :convert => 'png'

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fill => [48, 48]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    "images/#{secure_token(10)}.#{file.extension}" if original_filename.present?
  end

  protected
  def secure_token(length=16)
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(length/2))
  end
end

