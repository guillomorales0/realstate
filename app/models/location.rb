class Location < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name, :price, :status, :bedrooms, :baths, :yearbuilt, :housesize, :lotsize, :generaldetails, :propertytype, :pool, :fireplace, :garage, :price
  validates_presence_of :name, :address

  acts_as_gmappable :check_process => false


  def gmaps4rails_address
    address
  end

   def gmaps4rails_infowindow  
  "<p>#{self.name}</p><p>#{self.address}</p>"
  end

  def gmaps4rails_sidebar
   "<h4>#{name}</h4>" 
  end
end
