class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_many :prestations
  has_many :projects
  has_many :reviews
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_specialty,
    against: [ :specialty],
    using: {
      tsearch: { prefix: true }
    }

  mount_uploader :photo, PhotoUploader
end
