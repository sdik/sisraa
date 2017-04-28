require 'test_helper'

class ResponsaveisControllerTest < ActionController::TestCase
  setup do
    @responsavel = responsaveis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responsaveis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create responsavel" do
    assert_difference('Responsavel.count') do
      post :create, responsavel: { nome: @responsavel.nome }
    end

    assert_redirected_to responsavel_path(assigns(:responsavel))
  end

  test "should show responsavel" do
    get :show, id: @responsavel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @responsavel
    assert_response :success
  end

  test "should update responsavel" do
    patch :update, id: @responsavel, responsavel: { nome: @responsavel.nome }
    assert_redirected_to responsavel_path(assigns(:responsavel))
  end

  test "should destroy responsavel" do
    assert_difference('Responsavel.count', -1) do
      delete :destroy, id: @responsavel
    end

    assert_redirected_to responsaveis_path
  end
end
