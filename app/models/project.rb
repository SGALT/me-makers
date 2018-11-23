class Project < ApplicationRecord
  belongs_to :user
  has_many :prestations, dependent: :destroy

  mount_uploader :photo, PhotoUploader
end
