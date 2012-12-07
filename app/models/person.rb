class Person < ActiveRecord::Base

  attr_accessible :address, :name, :phone
  validates_presence_of :name , :address
  validates_numericality_of :phone
end
