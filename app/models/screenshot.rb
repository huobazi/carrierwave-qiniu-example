class Screenshot < ActiveRecord::Base
  attr_accessible :image, :name

  mount_uploader :image, ScreenshotUploader
end
