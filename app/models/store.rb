class Store < ActiveRecord::Base
  attr_accessible :address, :city_id, :name
  belongs_to :state
  belongs_to :city

  def self.location(fstate,fcity)
    result = order('name DESC')
    result = joins(:city => :state).where('states.name LIKE ? AND cities.name LIKE ?', fstate, fcity).order('name DESC') if fstate.present? && fcity.present?
    result
  end
end
