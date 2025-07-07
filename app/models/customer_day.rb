class CustomerDay < ApplicationRecord
  belongs_to :customer
  belongs_to :day
end
