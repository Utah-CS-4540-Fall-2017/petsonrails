# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  age                    :integer
#  zip_code               :string
#  email                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def required_attribute_missing(object, attr_name)
    # try saving the object which will set the errors attrib
    object.save
    object.errors.keys.include?(attr_name) &&
      object.errors[attr_name].include?("can't be blank")
  end

  def verify_existence_of(object, attr_name)
    # try to save the object to set the errors attribute
    object.save
    if object.errors.keys.include?(attr_name) &&
       object.errors[attr_name].include?("can't be blank")
      return false
    else
      return true
    end
  end

  test 'first name required' do
    jack = users(:pirate)
    # ensure the object is ok right now
    assert jack.save
    jack.first_name = ''
    # the save should fail now
    assert_not jack.save
    # and verify the error is getting set
    assert required_attribute_missing(jack, :first_name)
  end

  test 'last name required' do
    jack = users(:pirate)
    # ensure the object is ok right now
    assert jack.save
    jack.last_name = ''
    # the save should fail now
    assert_not jack.save
    # and verify the error is getting set
    assert required_attribute_missing(jack, :last_name)
  end

  test 'password is required on new records' do
    u = User.new
    refute verify_existence_of(u, :password)
  end

  test 'password is NOT required on existing records' do
    jack = users(:pirate)
    assert jack.save
  end

  test 'full_name returns concatenated first and last names' do
    kirk = users(:captain)
    assert kirk.full_name == 'James Kirk'
  end
end
