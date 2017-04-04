class Town < ActiveRecord::Base
  before_validation :geocode

  private 
    def geocode  
      returnList = Nominatim.search(self.nom).limit(1)
      townInfo = returnList.first
      if townInfo
        self.latitude = townInfo.latitude
        self.longitude = townInfo.longitude
      end
    end
end