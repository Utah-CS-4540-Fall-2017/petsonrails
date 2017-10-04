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

require 'test_helper'

class PetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
