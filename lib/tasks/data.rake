namespace :data do
  desc "import data from api to location table"
  task :import => :environment do
    Location.destroy_all

    yoga_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=yoga&key=#{ENV['google_key']}").body
    @yoga_locations = yoga_locations["results"].first(3)
    @yoga_locations.each do |yoga_location|
       Location.create(
          treatment_type: "Yoga",
          name: yoga_location["name"],
          vicinity: yoga_location["vicinity"],
          rating: yoga_location["rating"]
        )
    end

    acupuncture_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=acupuncture&key=#{ENV['google_key']}").body
    @acupuncture_locations = acupuncture_locations["results"].first(3)
    @acupuncture_locations.each do |acupuncture_location|
      Location.create(
         treatment_type: "Acupuncture",
         name: acupuncture_location["name"],
         vicinity: acupuncture_location["vicinity"],
         rating: acupuncture_location["rating"]
       )
     end

    supplements_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=supplements&key=#{ENV['google_key']}").body
    @supplements_locations = supplements_locations["results"].first(3)
    @supplements_locations.each do |supplements_location|
      Location.create(
         treatment_type: "Supplements",
         name: supplements_location["name"],
         vicinity: supplements_location["vicinity"],
         rating: supplements_location["rating"]
       )
    end

    taichi_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=martialarts&key=#{ENV['google_key']}").body
    @taichi_locations = taichi_locations["results"].first(3)
    @taichi_locations.each do |taichi_location|
      Location.create(
         treatment_type: "Taichi/Martial Arts",
         name: taichi_location["name"],
         vicinity: taichi_location["vicinity"],
         rating: taichi_location["rating"]
       )
    end

    biofeedback_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=2000&type=establishment&name=biofeedback&key=#{ENV['google_key']}").body
    @biofeedback_locations = biofeedback_locations["results"].first(3)
    @biofeedback_locations.each do |biofeedback_location|
      Location.create(
         treatment_type: "Biofeedback",
         name: biofeedback_location["name"],
         vicinity: biofeedback_location["vicinity"],
         rating: biofeedback_location["rating"]
       )
    end

    massage_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=health&name=massage&key=#{ENV['google_key']}").body
    @massage_locations = massage_locations["results"].first(3)
    @massage_locations.each do |massage_location|
      Location.create(
         treatment_type: "Massage",
         name: massage_location["name"],
         vicinity: massage_location["vicinity"],
         rating: massage_location["rating"]
       )
    end

    running_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=running&key=#{ENV['google_key']}").body
    @running_locations = running_locations["results"].first(3)
    @running_locations.each do |running_location|
      Location.create(
         treatment_type: "Running",
         name: running_location["name"],
         vicinity: running_location["vicinity"],
         rating: running_location["rating"]
       )
    end

    nutrition_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=health&name=nutrition&key=#{ENV['google_key']}").body
    @nutrition_locations = nutrition_locations["results"].first(3)
    @nutrition_locations.each do |nutrition_location|
      Location.create(
         treatment_type: "Nutrition",
         name: nutrition_location["name"],
         vicinity: nutrition_location["vicinity"],
         rating: nutrition_location["rating"]
       )
    end

    hypnotherapy_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=hypnotherapy&key=#{ENV['google_key']}").body
    @hypnotherapy_locations = hypnotherapy_locations["results"].first(3)
    @hypnotherapy_locations.each do |hypnotherapy_location|
      Location.create(
         treatment_type: "Hypnotherapy",
         name: hypnotherapy_location["name"],
         vicinity: hypnotherapy_location["vicinity"],
         rating: hypnotherapy_location["rating"]
       )
    end

    meditation_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=meditation&key=#{ENV['google_key']}").body
    @meditation_locations = meditation_locations["results"].first(3)
    @meditation_locations.each do |meditation_location|
      Location.create(
         treatment_type: "Meditation",
         name: meditation_location["name"],
         vicinity: meditation_location["vicinity"],
         rating: meditation_location["rating"]
       )
    end

    pet_locations = Unirest.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=41.8874703,-87.6337933&radius=1600&type=establishment&name=pet&key=#{ENV['google_key']}").body
    @pet_locations = pet_locations["results"].first(3)
    @pet_locations.each do |pet_location|
      Location.create(
         treatment_type: "Get a Pet",
         name: pet_location["name"],
         vicinity: pet_location["vicinity"],
         rating: pet_location["rating"]
       )
    end
  end
end
