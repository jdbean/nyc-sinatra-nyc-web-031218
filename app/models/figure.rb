class Figure <ActiveRecord::Base
  has_many :figures
  has_many :titles, through: :figuretitles

end
