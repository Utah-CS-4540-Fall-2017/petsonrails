# == Schema Information
#
# Table name: owners
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  rating     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
