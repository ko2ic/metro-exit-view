class Exit < ActiveRecord::Base
  has_many :stations, foreign_key: :station_id
end
