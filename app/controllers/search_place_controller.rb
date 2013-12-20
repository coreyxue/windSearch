# encoding: utf-8
class SearchPlaceController < ApplicationController
  def index
  end

  def search
  	#1/0 #use to see the params in error page
  	# not allow search only for one charactor
  	if params[:name].length<2
  		return @result = "no match found!"
  	end
  	search_term = params[:name]
  	@result=""

  	#prioritize search
  	if search_term[search_term.length-1]=='省'
  		province_info = Province.info(search_term)
  		@result = province_info
  	elsif search_term[search_term.length-1]=='市'
  		city_info = City.info(search_term)
  		@result = city_info.to_s
  	elsif search_term[search_term.length-1]=~/乡|县|村|区/
  		county_info = County.info(search_term)
  		@result = county_info.to_s
  	end

  	#enhence search
  	if @result == ""
	   	province_info = Province.info(search_term)
	  	city_info = City.info(search_term)
	  	county_info = County.info(search_term)
	  	@result = province_info.to_s+ city_info.to_s+ county_info.to_s
	end
  end
end
