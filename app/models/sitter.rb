# == Schema Information
#
# Table name: sitters
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sitter < ApplicationRecord
  belongs_to :user
end
