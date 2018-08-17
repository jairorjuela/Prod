class ProductsController < ApplicationController
  def index
    @products = Product.all
    @products = @products.where("category_id LIKE :category_id", category_id: "%#{params[:category_id]}%")
    @products = @products.where("purchase_id LIKE :purchase_id", purchase_id: "%#{params[:purchase_id]}%")
    @search = ProductSearch.new(params[:search])
    @products = @search.scope
  end


  def new
    @product = Product.new
    @categories = Category.all
    @purchases = Purchase.all
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to products_path
    else
      @errors = @product.errors.full_messages
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    product = Product.find(params[:id])
    if product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :category_id, :purchase_id, :date_product)
  end
end
