class HousingController < ApplicationController
  def index
    render json: { text: "Housing is live" }
  end
end
