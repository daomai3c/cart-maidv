class CatalogsController < ApplicationController
  def show
    @catalog = Catalog.find(params[:id])
    @products=@catalog.products.paginate(page: params[:page])
  end
end
