class Prestation < ApplicationRecord
  belongs_to :project
  belongs_to :user
  enum state: { pending: 0, booked: 1, declined: 2, done: 3 }
end
