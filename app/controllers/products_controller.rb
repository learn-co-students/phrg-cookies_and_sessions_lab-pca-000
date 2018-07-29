# frozen_string_literal: true

class ProductsController < ApplicationController
  helper_method :cart

  def index; end

  def add
    cart << params[:product]
  end
end
