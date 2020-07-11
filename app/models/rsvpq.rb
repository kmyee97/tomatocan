class Rsvpq < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :event
#  validates :user_id, presence: true
	validates :event_id, presence: true
	validates_format_of   :email, with: Devise.email_regexp, allow_blank: true
	validates :user_id, uniqueness: { scope: :event_id, message: "Can't have multiple RVSPs on the same event" }
	validates :email, presence: {unless: :user_id? }

end
