class ProductsController < ApplicationController

  def index
    @products = Product.all
    @product = Product.find_by(params[:id])

  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash.alert = 'Product has been Successfully Added'
      redirect_to products_path
    else
      flash.notice = 'Product Failed to Save! Try Again'
      render :new
    end
  end

  def edit
    @product = Product.find_by(params[:id])
  end

  def update
    @product = Product.find_by(params[:id])

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]

    if @product.save
      flash.alert = 'Product has been Successfully Edited'
      redirect_to products_path
    else
      flash.notice = 'Failed To Apply Edits! Try Again'
      render :edit
    end

  end

  def destroy
    @product = Product.find_by(params[:id])
    @product.destroy!

    flash.notice = 'Product has been deleted'
    redirect_to products_path

  end

end
