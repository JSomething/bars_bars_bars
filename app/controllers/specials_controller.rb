class SpecialsController < ApplicationController
  def index
    @venue = Venue.find params[:venue_id]
    @specials = @venue.specials
  end

  def show
    @venue = Venue.find params[:venue_id]
    @specials = @venue.specials
  end

  def new
    @venue = Venue.find params[:venue_id]
    @special = @venue.specials.new
  end

  def create
    @venue = Venue.find params[:venue_id]
    @special = @venue.specials.create special_params
    if @special.save
      flash[:success] = "Special Added!"
      redirect_to venue_specials_path(@venue)
    end
  end

  def edit
    @venue = Venue.find params[:venue_id]
    @special = Special.find params[:id]
  end

  def update
    @venue = Venue.find params[:venue_id]
    @special = Special.find params[:id]
    @special.update_attributes special_params
    redirect_to venue_specials_path(@venue)
  end

  def destroy
    @venue = Venue.find params[:venue_id]
    @special = Special.find params[:id]
    @special.delete
    redirect_to venue_specials_path(@venue)
  end

  private

  def special_params
    params.require(:special).permit(
      :description,
      :active_days,
      :start_time,
      :end_time
      )
  end
end
