class CookbooksController < ApplicationController
  def index
  end

  def lifter
    api_id = ENV['yummly_app_id']
    api_key = ENV['yummly_app_key']

    lifter_url = "http://api.yummly.com/v1/api/recipes?_app_id=#{api_id}&_app_key=#{api_key}&q=&nutrition.PROCNT.min=6&nutrition.PROCNT.max=8&nutrition.CHOCDF.max=8&nutrition.FASAT.max=4"

    @lifter_response = HTTParty.get(lifter_url)

    render json: @lifter_response
  end

  def yogi
    api_id = ENV['yummly_app_id']
    api_key = ENV['yummly_app_key']

    yogi_url = "http://api.yummly.com/v1/api/recipes?_app_id=#{api_id}&_app_key=#{api_key}&q=&nutrition.PROCNT.min=4&nutrition.PROCNT.max=8&nutrition.CHOCDF.min=4&nutrition.CHOCDF.max=10&nutrition.FASAT.min=4&nutrition.FASAT.max=8"

    @yogi_response = HTTParty.get(yogi_url)

    render json: @yogi_response
  end

  def weight_lifter
    api_id = ENV['yummly_app_id']
    api_key = ENV['yummly_app_key']

    yogi_url = "http://api.yummly.com/v1/api/recipes?_app_id=#{api_id}&_app_key=#{api_key}&q=&nutrition.PROCNT.min=4&nutrition.PROCNT.max=8&nutrition.CHOCDF.min=4&nutrition.CHOCDF.max=10&nutrition.FASAT.min=4&nutrition.FASAT.max=8"

    @yogi_response = HTTParty.get(yogi_url)

    render json: @yogi_response
  end

end
