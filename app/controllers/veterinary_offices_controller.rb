class VeterinaryOfficesController < ApplicationController
  def index
    @veterinary_offices = VeterinaryOffice.all
  end
end