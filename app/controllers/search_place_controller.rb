class SearchPlaceController < ApplicationController
  def index
  end

  def search
  	province = Province.find_by_name(params[:name])
  	city = City.info(params[:name])
  	county = County.info(params[:name])
  	@result = province.to_s+ city.to_s+ county.to_s
  end
end
