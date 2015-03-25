class HomeController < ApplicationController
  respond_to :html, :js, :haml
  def index
    @search = Search.new
  end
end
