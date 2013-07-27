# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


#states
states = State.create([{ :name => 'Baja California' }, { :name => 'Baja California Sur' }, { :name => 'Sonora' }])

#cities
cities = City.create([{ :name => 'Tijuana', :state_id => 1 }, { :name => 'Rosarito', :state_id => 1 }, { :name => 'La Paz', :state_id => 2 }])

#stores
stores = Store.create([{ :name => 'Calimax', :city_id => 1, :address => 'Otay Universidad' },{ :name => 'Soriana', :city_id => 1, :address => 'Otay' },{ :name => 'Comercial Mexicana', :city_id => 2, :address => 'Malecon' },{ :name => 'Ley', :city_id => 3, :address => 'Blvd. Delfines' }])
