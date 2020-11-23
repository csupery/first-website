require 'test_helper'

class CouleursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @couleur = couleurs(:one)
  end

  test "should get index" do
    get couleurs_url
    assert_response :success
  end

  test "should get new" do
    get new_couleur_url
    assert_response :success
  end

  test "should create couleur" do
    assert_difference('Couleur.count') do
      post couleurs_url, params: { couleur: { nom: @couleur.nom } }
    end

    assert_redirected_to couleur_url(Couleur.last)
  end

  test "should show couleur" do
    get couleur_url(@couleur)
    assert_response :success
  end

  test "should get edit" do
    get edit_couleur_url(@couleur)
    assert_response :success
  end

  test "should update couleur" do
    patch couleur_url(@couleur), params: { couleur: { nom: @couleur.nom } }
    assert_redirected_to couleur_url(@couleur)
  end

  test "should destroy couleur" do
    assert_difference('Couleur.count', -1) do
      delete couleur_url(@couleur)
    end

    assert_redirected_to couleurs_url
  end
end
