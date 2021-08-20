class VeterinariansController < ApplicationController
  def index
    @veterinarians = Veterinarian.all
  end
end