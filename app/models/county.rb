class County < ActiveRecord::Base
  attr_accessible :city_id, :name
  belongs_to :city

  def self.info(name)
  	county = self.find_by_name(name)
  	if county
  		city = county.city
  		province = city.province
  		return [province.name, city.name, county.name]
  	end
  end
end
