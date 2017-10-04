# == Schema Information
#
# Table name: animal_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AnimalType < ApplicationRecord
  has_many :animal_subtypes
  has_many :pets, through: :animal_subtypes
  has_many :owners, through: :animal_subtypes
end
