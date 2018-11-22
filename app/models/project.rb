class Project < ApplicationRecord
  belongs_to :user
  has_many :prestations, dependent: :destroy
  has_one :review, dependent: :destroy

  mount_uploader :photo, PhotoUploader
end
