class Issue < ActiveRecord::Base

  validates :title, presence: true
  validates :description, presence: true
  validates_numericality_of :no_followers

end
