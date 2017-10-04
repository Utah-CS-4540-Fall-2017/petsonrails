require 'test_helper'

class AnimalSubtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_subtype = animal_subtypes(:one)
  end

  test "should get index" do
    get animal_subtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_subtype_url
    assert_response :success
  end

  test "should create animal_subtype" do
    assert_difference('AnimalSubtype.count') do
      post animal_subtypes_url, params: { animal_subtype: { animal_type_id: @animal_subtype.animal_type_id, name: @animal_subtype.name } }
    end

    assert_redirected_to animal_subtype_url(AnimalSubtype.last)
  end

  test "should show animal_subtype" do
    get animal_subtype_url(@animal_subtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_subtype_url(@animal_subtype)
    assert_response :success
  end

  test "should update animal_subtype" do
    patch animal_subtype_url(@animal_subtype), params: { animal_subtype: { animal_type_id: @animal_subtype.animal_type_id, name: @animal_subtype.name } }
    assert_redirected_to animal_subtype_url(@animal_subtype)
  end

  test "should destroy animal_subtype" do
    assert_difference('AnimalSubtype.count', -1) do
      delete animal_subtype_url(@animal_subtype)
    end

    assert_redirected_to animal_subtypes_url
  end
end
