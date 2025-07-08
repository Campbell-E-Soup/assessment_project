class HomeController < ApplicationController
    def index
        @customers = Customer.includes(:business_type, :days).order(created_at: :desc)
    end
end
