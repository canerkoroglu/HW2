class Customer < ApplicationRecord
  has_many :reservation, dependent: :destroy
  validates :full_name, presence: true, length: { minimum: 5 }
  validates :phone, length: { minimum: 10 }

end
