class RecommendationsController < ApplicationController

  def create
    @rec_treatment = RecommendedTreatments.create(
      treatment_id: params[:treatment_id],
      user_id: current_user.id
    )

  end

  def index
    @treatments = current_user.treatments
    yoga_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=yoga&key=#{ENV['google_key']}").body
    @yoga_locations = yoga_locations["results"].first(3)
    # @treatment_descriptions = current_user.treatment_descriptions.keys.sort
  end
end
