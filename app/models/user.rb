class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_many :prestations
  has_many :projects
  has_many :reviews

  include PgSearch
  pg_search_scope :search_by_specialty,
    against: [ :specialty],
    using: {
      tsearch: { prefix: true }
    }
end
