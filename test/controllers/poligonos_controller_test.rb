require 'test_helper'

class PoligonosControllerTest < ActionController::TestCase
  setup do
    @poligono = poligonos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poligonos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poligono" do
    assert_difference('Poligono.count') do
      post :create, poligono: { descricao: @poligono.descricao, obs: @poligono.obs, the_geom: @poligono.the_geom }
    end

    assert_redirected_to poligono_path(assigns(:poligono))
  end

  test "should show poligono" do
    get :show, id: @poligono
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poligono
    assert_response :success
  end

  test "should update poligono" do
    patch :update, id: @poligono, poligono: { descricao: @poligono.descricao, obs: @poligono.obs, the_geom: @poligono.the_geom }
    assert_redirected_to poligono_path(assigns(:poligono))
  end

  test "should destroy poligono" do
    assert_difference('Poligono.count', -1) do
      delete :destroy, id: @poligono
    end

    assert_redirected_to poligonos_path
  end
end
