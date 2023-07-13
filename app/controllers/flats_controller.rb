class FlatsController < ApplicationController
  attr_reader :formated_date
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @available_flats = Flat.where("occupied = ? ", false).order(availability_date: :asc)
    @occupied_flats = Flat.where("occupied = ? ", true)
    @flats = [@available_flats, @occupied_flats].flatten
    @carte_cergy = Medium.all.first
  end

  def show
    @flat = Flat.friendly.find(params[:id])
  end
end
