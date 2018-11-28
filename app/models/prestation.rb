class Prestation < ApplicationRecord
  belongs_to :project
  belongs_to :artisan, class_name: "User", foreign_key: 'artisan_id'
  has_many :messages, dependent: :destroy

  enum state: { pending: 0, booked: 1, declined: 2, done: 3 }
end
