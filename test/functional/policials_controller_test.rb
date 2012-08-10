require 'test_helper'

class PolicialsControllerTest < ActionController::TestCase
  setup do
    @policial = policials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policial" do
    assert_difference('Policial.count') do
      post :create, policial: { cpf: @policial.cpf, email: @policial.email, matricula: @policial.matricula, nascimento: @policial.nascimento, nome: @policial.nome, nome_guerra: @policial.nome_guerra }
    end

    assert_redirected_to policial_path(assigns(:policial))
  end

  test "should show policial" do
    get :show, id: @policial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policial
    assert_response :success
  end

  test "should update policial" do
    put :update, id: @policial, policial: { cpf: @policial.cpf, email: @policial.email, matricula: @policial.matricula, nascimento: @policial.nascimento, nome: @policial.nome, nome_guerra: @policial.nome_guerra }
    assert_redirected_to policial_path(assigns(:policial))
  end

  test "should destroy policial" do
    assert_difference('Policial.count', -1) do
      delete :destroy, id: @policial
    end

    assert_redirected_to policials_path
  end
end
