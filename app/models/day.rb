class Day < ApplicationRecord
    has_many :customer_days, dependent: :destroy
    has_many :customers, through: :customer_days
end
