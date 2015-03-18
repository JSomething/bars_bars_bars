class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.create! search_params
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(
      :venue_name,
      :venue_category,
      :venue_subcategory,
      :address,
      :dancing,
      :allows_under_21,
      :food,
      :has_specials,
      :groups,
      :price_range,
      :opening_time,
      :closing_time
      )
  end

end
