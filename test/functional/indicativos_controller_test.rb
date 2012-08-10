require 'test_helper'

class IndicativosControllerTest < ActionController::TestCase
  setup do
    @indicativo = indicativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicativo" do
    assert_difference('Indicativo.count') do
      post :create, indicativo: { descricao: @indicativo.descricao, lote: @indicativo.lote }
    end

    assert_redirected_to indicativo_path(assigns(:indicativo))
  end

  test "should show indicativo" do
    get :show, id: @indicativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicativo
    assert_response :success
  end

  test "should update indicativo" do
    put :update, id: @indicativo, indicativo: { descricao: @indicativo.descricao, lote: @indicativo.lote }
    assert_redirected_to indicativo_path(assigns(:indicativo))
  end

  test "should destroy indicativo" do
    assert_difference('Indicativo.count', -1) do
      delete :destroy, id: @indicativo
    end

    assert_redirected_to indicativos_path
  end
end
