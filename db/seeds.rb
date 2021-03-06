# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "uri"
require "net/http"


### Initial Seed uses too much memory so we have to run the update methods separately 


def food_index
    url = URI("https://api.nal.usda.gov/fdc/v1/foods/search?dataType=SR Legacy, Foundation&currentPage=1&sortOrder=desc&pageSize=10000")

    https = Net::HTTP.new(url.host, url.port);
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["x-api-key"] = ENV["FDC_KEY"]

    response = https.request(request)
    index = response.read_body
    JSON.parse(index)
end




food_index["foods"].each do |food|
    Food.create_by_food_hash(food)
end

Food.find_each do |food|
    food.food_nutrient_hash(food)
end
