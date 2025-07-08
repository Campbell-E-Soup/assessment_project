class CustomerController < ApplicationController
    # GET /customer/:id
    def show
        @customer = Customer.find_by(id: params[:id])

        if @customer.nil?
            redirect_to root_path, alert: "Customer with id '#{params[:id]}' could not be found."
        end

        # Allows us to link the next page based on id on the page
        @next = @customer.next
        @prev = @customer.previous
    end

    # GET /customer/new
    def new
        @customer = Customer.new
        @business_types = BusinessType.all
        @days = Day.all
    end
end
