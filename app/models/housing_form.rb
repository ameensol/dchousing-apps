class HousingForm < ActiveRecord::Base
  attr_accessible :name, :uri
  has_and_belongs_to_many :form_fields
end
