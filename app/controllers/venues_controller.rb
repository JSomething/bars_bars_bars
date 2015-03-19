class VenuesController < ApplicationController
  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find params[:id]
    @specials = @venue.spe
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.create venue_params
    if @venue.save
      flash[:success] = "Venue Added!"
      redirect_to venues_path
    else
      flash[:danger] = "ERROR ERROR"
      render :new
    end
  end

  def edit
    @venue = Venue.find params[:id]
  end

  def update
    @venue = Venue.find params[:id]
    @venue.update venue_params
    redirect_to venues_path
  end

  def destroy
    @venue = Venue.find params[:id]
    @venue.destroy
    redirect_to venues_path
  end

  private

  def venue_params
    params.require(:venue).permit(
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
