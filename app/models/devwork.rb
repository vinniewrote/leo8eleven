class Devwork < ApplicationRecord
  validates :client, presence: true,
                    length: { minimum: 5 }

  mount_uploader :hero, ImageUploader
end
