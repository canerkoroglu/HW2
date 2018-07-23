class ReservationsController < ApplicationController

  before_validation :is_not_sunday, on :create

  def create
    @reservation= Reservation.new(reservation_params)
    @reservation.save
  end

  private

  def is_not_sunday
    if d.cwday==7
      false
    else
      true
    end
  end

end
