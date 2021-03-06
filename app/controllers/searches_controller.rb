class SearchesController < ApplicationController

  # before_action :all_searches, only: [:index, :new, :create]
  # respond_to :html, :js, :haml

  def new
    @search = Search.new

  end

  def create
    @search = Search.create! search_params
    @results = @search.venues
    # redirect_to search_path(@search)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @search = Search.find(params[:id])
    @results = @search.venues
    @specials = @results.joins(:specials)
    # @addresses = @search.venues.map(&:address)
    # @venue_names = @search.venues.map(&:venue_name)
    # @address_count = @addresses.length
    # @address_count = @addresses.length
    # @address_hash = @address_count.new(@address_count) {Hash.new}

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
