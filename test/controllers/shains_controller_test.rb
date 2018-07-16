require 'test_helper'

class ShainsControllerTest < ActionController::TestCase
  setup do
    @shain = shains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shain" do
    assert_difference('Shain.count') do
      post :create, shain: { busho_id: @shain.busho_id, del_flg: @shain.del_flg, hire_date: @shain.hire_date, leave_date: @shain.leave_date, name_1: @shain.name_1, name_1_kana: @shain.name_1_kana, name_2: @shain.name_2, name_2_kana: @shain.name_2_kana, num: @shain.num, shain_kbn: @shain.shain_kbn }
    end

    assert_redirected_to shain_path(assigns(:shain))
  end

  test "should show shain" do
    get :show, id: @shain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shain
    assert_response :success
  end

  test "should update shain" do
    patch :update, id: @shain, shain: { busho_id: @shain.busho_id, del_flg: @shain.del_flg, hire_date: @shain.hire_date, leave_date: @shain.leave_date, name_1: @shain.name_1, name_1_kana: @shain.name_1_kana, name_2: @shain.name_2, name_2_kana: @shain.name_2_kana, num: @shain.num, shain_kbn: @shain.shain_kbn }
    assert_redirected_to shain_path(assigns(:shain))
  end

  test "should destroy shain" do
    assert_difference('Shain.count', -1) do
      delete :destroy, id: @shain
    end

    assert_redirected_to shains_path
  end
end
