class ProductsController < ApplicationController
  def index
    # plural products because we search for all records
    @products = Product.all
  end

  def show
    # singular product because we only search for a single record
    # params[:id] = read request param {id: <value>} and insert into the ()
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end
end
