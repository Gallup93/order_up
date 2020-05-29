class ChefsController < ApplicationController
  def index
    @chef = Chef.find(params[:id])
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
