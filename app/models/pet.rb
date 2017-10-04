# == Schema Information
#
# Table name: pets
#
#  id                :integer          not null, primary key
#  size              :integer
#  is_housetrained   :boolean
#  owner_id          :integer
#  animal_subtype_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Pet < ApplicationRecord
  belongs_to :owner
  belongs_to :animal_subtype
  has_one :animal_type, through: :animal_subtype

  enum size: [:small, :medium, :large]

  def animal_name
    if animal_sub_type
      animal_sub_type.full_name
    else
      'n/a'
    end
  end
end
