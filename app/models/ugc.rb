class Ugc < ApplicationRecord
  belongs_to :user
  mount_uploader :photo_url, UgcPhotoUploader
  acts_as_taggable_on :tags

  validates :title, presence: true
end
