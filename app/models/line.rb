class Line < ActiveRecord::Base
  self.primary_key = :line_id
  has_many :stations#, through: :station_lines
end
