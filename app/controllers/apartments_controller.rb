class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def refresh
    Apartment.refresh
    redirect_to root_path
  end
end
