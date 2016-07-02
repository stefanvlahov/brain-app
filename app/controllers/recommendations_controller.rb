class RecommendationsController < ApplicationController

  def create
    @rec_treatment = RecommendedTreatments.create(
      treatment_id: params[:treatment_id],
      user_id: current_user.id
    )

  end

  def index
    @treatments = current_user.treatments
    # @treatment_descriptions = current_user.treatment_descriptions.keys.sort
  end
end
