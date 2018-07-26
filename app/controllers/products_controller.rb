# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    cart = session[:cart] || []
    session[:cart] = cart
  end

  def add
    session[:cart] << params[:product]
    redirect_to products_path
  end
end
