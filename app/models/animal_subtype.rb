# == Schema Information
#
# Table name: animal_subtypes
#
#  id             :integer          not null, primary key
#  name           :string
#  animal_type_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class AnimalSubtype < ApplicationRecord
  belongs_to :animal_type
  has_many :pets
  has_many :owners, through: :pets
end
