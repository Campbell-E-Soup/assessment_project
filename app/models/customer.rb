class Customer < ApplicationRecord
  belongs_to :business_type

  has_many :customer_days, dependent: :destroy
  has_many :days, through: :customer_days


  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "email must exist" }
  validates :phone, presence: true, format: { with: /\A\(?\d{3}\)?[\s\-]?\d{3}\-?\d{4}\z/, message: "must be a valid phone number" }
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, length: { in: 5..10 }, presence: true
  validates :days, presence: true

  def next
    Customer.where("id > ?", id).order(:id).first || Customer.order(:id).first
  end

  def previous
    Customer.where("id < ?", id).order(id: :desc).first || Customer.order(id: :desc).first
  end
end
