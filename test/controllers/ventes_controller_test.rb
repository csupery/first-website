require 'test_helper'

class VentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vente = ventes(:one)
  end

  test "should get index" do
    get ventes_url
    assert_response :success
  end

  test "should get new" do
    get new_vente_url
    assert_response :success
  end

  test "should create vente" do
    assert_difference('Vente.count') do
      post ventes_url, params: { vente: { prix: @vente.prix, produit_id: @vente.produit_id, remboursement: @vente.remboursement, statut_vente: @vente.statut_vente, user_id: @vente.user_id } }
    end

    assert_redirected_to vente_url(Vente.last)
  end

  test "should show vente" do
    get vente_url(@vente)
    assert_response :success
  end

  test "should get edit" do
    get edit_vente_url(@vente)
    assert_response :success
  end

  test "should update vente" do
    patch vente_url(@vente), params: { vente: { prix: @vente.prix, produit_id: @vente.produit_id, remboursement: @vente.remboursement, statut_vente: @vente.statut_vente, user_id: @vente.user_id } }
    assert_redirected_to vente_url(@vente)
  end

  test "should destroy vente" do
    assert_difference('Vente.count', -1) do
      delete vente_url(@vente)
    end

    assert_redirected_to ventes_url
  end
end
