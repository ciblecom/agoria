class LogoUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
      #asset_path([version_name, "default.png"].compact.join('_'))
  #
      [version_name, "default.png"].compact.join('_')
  end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_fill => [75, 75]
  end
  
  version :medium do
    process :resize_to_fill => [200, 200]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
