require 'test_helper'

class RelatoriosControllerTest < ActionController::TestCase
  setup do
    @relatorio = relatorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relatorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relatorio" do
    assert_difference('Relatorio.count') do
      post :create, relatorio: { acao: @relatorio.acao, anomalia: @relatorio.anomalia, data: @relatorio.data, departamento_id: @relatorio.departamento_id, descricao: @relatorio.descricao, grupodeanalise: @relatorio.grupodeanalise, setor_id: @relatorio.setor_id }
    end

    assert_redirected_to relatorio_path(assigns(:relatorio))
  end

  test "should show relatorio" do
    get :show, id: @relatorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relatorio
    assert_response :success
  end

  test "should update relatorio" do
    patch :update, id: @relatorio, relatorio: { acao: @relatorio.acao, anomalia: @relatorio.anomalia, data: @relatorio.data, departamento_id: @relatorio.departamento_id, descricao: @relatorio.descricao, grupodeanalise: @relatorio.grupodeanalise, setor_id: @relatorio.setor_id }
    assert_redirected_to relatorio_path(assigns(:relatorio))
  end

  test "should destroy relatorio" do
    assert_difference('Relatorio.count', -1) do
      delete :destroy, id: @relatorio
    end

    assert_redirected_to relatorios_path
  end
end
