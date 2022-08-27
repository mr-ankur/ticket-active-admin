class Ticket < ApplicationRecord
  belongs_to :user
  validates :incident_number, presence: true
  validates :date_of_service, presence: true
end
