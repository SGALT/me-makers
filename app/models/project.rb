class Project < ApplicationRecord
  belongs_to :user
  has_many :prestations
  has_one :reviews

  mount_uploader :photo, PhotoUploader
end
