class Message < ApplicationRecord
  belongs_to :user
  belongs_to :prestation
  # validates :content, presence: true, allow_blank: false
  # after_create :broadcast_message
end
