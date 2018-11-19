class Project < ApplicationRecord
  belongs_to :user
  has_many :prestations
  has_one :reviews
end
