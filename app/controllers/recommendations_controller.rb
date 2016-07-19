class RecommendationsController < ApplicationController

  def create
    @rec_treatment = RecommendedTreatments.create(
      treatment_id: params[:treatment_id],
      user_id: current_user.id
    )
  end

  def index
    @treatments = current_user.treatments

    @yoga_locations = Location.where(treatment_type: "Yoga")

    @acupuncture_locations = Location.where(treatment_type: "Acupuncture")

    @supplements_locations = Location.where(treatment_type: "Supplements")

    @taichi_locations = Location.where(treatment_type: "Taichi/Martial Arts")

    @biofeedback_locations = Location.where(treatment_type: "Biofeedback")

    @massage_locations = Location.where(treatment_type: "Massage")

    @running_locations = Location.where(treatment_type: "Running")

    @nutrition_locations = Location.where(treatment_type: "Nutrition")

    @hypnotherapy_locations = Location.where(treatment_type: "Hypnotherapy")

    @meditation_locations = Location.where(treatment_type: "Meditation")

    @pet_locations = Location.where(treatment_type: "Get a Pet")

  end
end
