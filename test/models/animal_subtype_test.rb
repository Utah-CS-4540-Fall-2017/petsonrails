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

require 'test_helper'

class AnimalSubtypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
