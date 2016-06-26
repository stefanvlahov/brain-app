class RecommendationsController < ApplicationController

  def create
    @rec_treatment = RecommendedTreatments.create(
      treatment_id: params[:treatment_id],
      user_id: current_user.id
    )

  end

  def index

  end
end
