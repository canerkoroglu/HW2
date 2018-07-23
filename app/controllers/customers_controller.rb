class CustomersController < ApplicationController

  before_validation :remove_empty_characters_from_name, on :create

  def new
    @customer = Customer.new
  end

  def create
    @customer= Customer.new(customer_params)
    @customer.save
  end

  private
    def remove_empty_characters_from_name
      self.full_namefull_name.gsub!(/\s+/, '')
    end

end
