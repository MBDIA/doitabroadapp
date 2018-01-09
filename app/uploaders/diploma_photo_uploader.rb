# encoding: utf-8

class DiplomaPhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :standard do
    resize_to_fit 800, 600
  end
end
