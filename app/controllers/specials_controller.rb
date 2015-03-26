class SpecialsController < ApplicationController

  before_filter :load_venues

  def load_venues
    @venue = Venue.find(params[:venue_id]) if params[:venue_id].present?
  end

  def index
    @specials = @venue.present? ? @venue.specials : Special.all
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
      redirect_to venues_path(@venue)
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
      :end_time,
      :mon,
      :tues,
      :wed,
      :thur,
      :fri,
      :sat,
      :sun
      )
  end
end
