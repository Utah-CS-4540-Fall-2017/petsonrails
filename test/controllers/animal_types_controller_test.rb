require 'test_helper'

class AnimalTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @animal_type = animal_types(:one)
  end

  test "should get index" do
    get animal_types_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_type_url
    assert_response :success
  end

  test "should create animal_type" do
    assert_difference('AnimalType.count') do
      post animal_types_url, params: { animal_type: { name: @animal_type.name } }
    end

    assert_redirected_to animal_type_url(AnimalType.last)
  end

  test "should show animal_type" do
    get animal_type_url(@animal_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_type_url(@animal_type)
    assert_response :success
  end

  test "should update animal_type" do
    patch animal_type_url(@animal_type), params: { animal_type: { name: @animal_type.name } }
    assert_redirected_to animal_type_url(@animal_type)
  end

  test "should destroy animal_type" do
    assert_difference('AnimalType.count', -1) do
      delete animal_type_url(@animal_type)
    end

    assert_redirected_to animal_types_url
  end
end
