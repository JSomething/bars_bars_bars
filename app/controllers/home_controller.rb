class HomeController < ApplicationController
  respond_to :html, :js, :haml

  before_filter :load_venues

  def load_venues
    @venue = Venue.find(params[:venue_id]) if params[:venue_id].present?
  end

  def index
    @search = Search.new
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



end



    