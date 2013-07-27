class State < ActiveRecord::Base
  attr_accessible :name
  has_many :cities
  has_many :stores
end
