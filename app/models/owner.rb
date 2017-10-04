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

class Owner < ApplicationRecord
  belongs_to :user
  has_many :pets

  delegate :first_name, to: :user
  delegate :last_name, to: :user
end
