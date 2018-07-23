class Reservation < ApplicationRecord

  belongs_to :customer
  before_create :generate_rand_reservation_code_and_cur_date
  after_create :send_email_to_customer

  private

  def generate_rand_reservation_code_and_cur_date
    rescode = (0...10).map { ('a'..'z').to_a[rand(26)] }.join.upcase
    self.reservation_code = rescode
    self.reservation_date = Date.today
  end

  def send_email_to_customer
    # eposta gonderimi..
  end

end
