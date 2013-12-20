class City < ActiveRecord::Base
  attr_accessible :name, :province_id
  belongs_to :province
  has_many :county

  def self.info(name)
  	city = self.find_by_name(name)
  	if city
  		province = city.province
  		return [province.name, city.name]
  	end
  end
end
