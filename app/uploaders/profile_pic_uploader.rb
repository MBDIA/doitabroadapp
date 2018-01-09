# encoding: utf-8

class ProfilePicUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
