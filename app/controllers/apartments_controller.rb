class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all.order('created_at')
  end

  def refresh
    Apartment.refresh
    redirect_to root_path
  end
end
