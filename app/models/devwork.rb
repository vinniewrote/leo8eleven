class Devwork < ApplicationRecord
  validates :client, presence: true,
                    length: { minimum: 5 }
end
