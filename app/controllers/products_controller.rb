class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
      @product = Product.new
  end

  def create
    Product.create(:name => params[:product][:name],:description=>params[:product][:description],:category=>params[:product][:category],:price=>params[:product][:price],:url=>params[:product][:url])
    redirect_to(products_path)
  end

  def all
    @products = Product.all
  end

  def edit
    @product=Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end


  def update
    @product = Product.find(params[:id])
    @product.update(:name => params[:product][:name],:description=>params[:product][:description],:category=>params[:product][:category],:price=>params[:product][:price],:url=>params[:product][:url])
    redirect_to(products_path)
  end

  def destroy
    Product.find(params[:id]).destroy
    redirect_to(products_path)
  end

  def cart
    
  end

end
