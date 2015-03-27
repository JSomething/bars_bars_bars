class SpecialsController < ApplicationController

  before_filter :load_venues

  def load_venues
    @venue = Venue.find(params[:venue_id]) if params[:venue_id].present?
  end

  def index
    @specials = @venue.present? ? @venue.specials : Special.all


    @specials_filtered = case Time.now.wday
    when 0
      Special.where(sun: true)
    when 1
      Special.where(mon: true)
    when 2
      Special.where(tues: true)
    when 3
      Special.where(wed: true)
    when 4
      Special.where(thur: true)
    when 5
      Special.where(fri: true)
    when 6
      Special.where(sat: true)
    when 7
      Special.where(sun: true)
    end

    @valid_specials = []

    @specials_filtered.each do |special|
      start = Time.parse(special.start_time.strftime("%H:%M"))
      ending = Time.parse(special.end_time.strftime("%H:%M"))
      if Time.now.between?(start, ending)
        @valid_specials << special
      end
    end

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
