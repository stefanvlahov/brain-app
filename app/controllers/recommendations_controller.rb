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

    acupuncture_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=acupuncture&key=#{ENV['google_key']}").body
    @acupuncture_locations = acupuncture_locations["results"].first(3)

    supplements_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=supplements&key=#{ENV['google_key']}").body
    @supplements_locations = supplements_locations["results"].first(3)

    taichi_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=martialarts&key=#{ENV['google_key']}").body
    @taichi_locations = taichi_locations["results"].first(3)

    biofeedback_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=2000&type=establishment&name=biofeedback&key=#{ENV['google_key']}").body
    @biofeedback_locations = biofeedback_locations["results"].first(3)

    massage_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=health&name=massage&key=#{ENV['google_key']}").body
    @massage_locations = massage_locations["results"].first(3)

    running_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=running&key=#{ENV['google_key']}").body
    @running_locations = running_locations["results"].first(3)

    nutrition_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=health&name=nutrition&key=#{ENV['google_key']}").body
    @nutrition_locations = nutrition_locations["results"].first(3)

    hypnotherapy_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=hypnotherapy&key=#{ENV['google_key']}").body
    @hypnotherapy_locations = hypnotherapy_locations["results"].first(3)

    meditation_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=meditation&key=#{ENV['google_key']}").body
    @meditation_locations = meditation_locations["results"].first(3)

    pet_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=pet&key=#{ENV['google_key']}").body
    @pet_locations = pet_locations["results"].first(3)
    # @treatment_descriptions = current_user.treatment_descriptions.keys.sort
  end
end
