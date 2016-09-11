class Status < ApplicationRecord
  has_many :members
#  validates :status, :color, presence: true
  validates :status, :color, presence: { message: "入力して下さい"}
end
