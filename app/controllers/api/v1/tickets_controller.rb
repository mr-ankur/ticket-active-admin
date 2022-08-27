class Api::V1::TicketsController < ApplicationController
  def index
    render json: Ticket.includes(:user).all
  end
end
