class TicketSerializer < ActiveModel::Serializer
  attributes :id, :incident_number, :status, :date_of_service, :user

  def user
    object.user
  end
end
