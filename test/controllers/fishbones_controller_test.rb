require 'test_helper'

class FishbonesControllerTest < ActionController::TestCase
  setup do
    @fishbone = fishbones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fishbones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fishbone" do
    assert_difference('Fishbone.count') do
      post :create, fishbone: { acao: @fishbone.acao, causa: @fishbone.causa, grupo: @fishbone.grupo, prazo: @fishbone.prazo, relatorio_id: @fishbone.relatorio_id, relevancia: @fishbone.relevancia, responsavel_id: @fishbone.responsavel_id }
    end

    assert_redirected_to fishbone_path(assigns(:fishbone))
  end

  test "should show fishbone" do
    get :show, id: @fishbone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fishbone
    assert_response :success
  end

  test "should update fishbone" do
    patch :update, id: @fishbone, fishbone: { acao: @fishbone.acao, causa: @fishbone.causa, grupo: @fishbone.grupo, prazo: @fishbone.prazo, relatorio_id: @fishbone.relatorio_id, relevancia: @fishbone.relevancia, responsavel_id: @fishbone.responsavel_id }
    assert_redirected_to fishbone_path(assigns(:fishbone))
  end

  test "should destroy fishbone" do
    assert_difference('Fishbone.count', -1) do
      delete :destroy, id: @fishbone
    end

    assert_redirected_to fishbones_path
  end
end
