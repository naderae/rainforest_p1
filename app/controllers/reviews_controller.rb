class ReviewsController < ApplicationController


  def create

    @product = Product.find(params[:product_id])
    @review = @product.reviews.new

    @review.comment = params[:review][:comment]

    if @review.save
      flash[:notice] = "Your Comment has been Successfully Saved"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Your Comment Failed to save, Try again"
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])

    @review.comment = params[:review][:comment]

    if @review.save
      flash[:notice] = "Your Comment has been Successfully Saved"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Your Comment Failed to save, Try again"
      render :edit
    end

  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])

    flash.notice = 'Product has been deleted'
    redirect_to product_path(@product)
  end
end
