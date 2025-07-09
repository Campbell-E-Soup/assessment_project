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

    # POST /customer
    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            redirect_to root_path, notice: "Customer created successfully."
        else
            @business_types = BusinessType.all
            @days = Day.all
            render :new, status: :unprocessable_entity
        end
    end

    private

    # Creates customer from form data
    def customer_params
        params.require(:customer).permit(
        :name, :address1, :address2, :city, :state, :zip_code,
        :email, :phone, :business_type_id, day_ids: []
        )
    end
end
