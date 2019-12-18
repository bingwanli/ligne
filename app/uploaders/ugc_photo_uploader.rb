class UgcPhotoUploader < CarrierWave::Uploader::Base
    include Cloudinary::CarrierWave
end
