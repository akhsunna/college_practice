# encoding: utf-8

class CoverUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  version :thumb do
    process :resize_to_fill => [350,500]
  end

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url
    ActionController::Base.helpers.asset_path('fallback/' + [version_name, 'default-cover.jpg'].compact.join('_'))
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
