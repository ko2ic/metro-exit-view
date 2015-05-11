class Station < ActiveRecord::Base
  self.primary_key = :station_id
  has_many :lines, foreign_key: :line_id#, through: :station_lines
  belongs_to :exit
end
