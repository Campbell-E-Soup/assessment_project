class Customer < ApplicationRecord
  belongs_to :business_type

  has_many :customer_days, dependent: :destroy
  has_many :days, through: :customer_days

  validates :address1, :city, :state, :zip_code, :name, presence: true
  validates :days, presence: true # Enforces a customer having a day available for a delivery

  def next
    Customer.where("id > ?", id).order(:id).first || Customer.order(:id).first
  end

  def previous
    Customer.where("id < ?", id).order(id: :desc).first || Customer.order(id: :desc).first
  end
end
