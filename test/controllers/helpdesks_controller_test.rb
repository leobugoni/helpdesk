require 'test_helper'

class HelpdesksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helpdesk = helpdesks(:one)
  end

  test "should get index" do
    get helpdesks_url
    assert_response :success
  end

  test "should get new" do
    get new_helpdesk_url
    assert_response :success
  end

  test "should create helpdesk" do
    assert_difference('Helpdesk.count') do
      post helpdesks_url, params: { helpdesk: { cachorro: @helpdesk.cachorro, gato: @helpdesk.gato, id_seq: @helpdesk.id_seq, valor: @helpdesk.valor } }
    end

    assert_redirected_to helpdesk_url(Helpdesk.last)
  end

  test "should show helpdesk" do
    get helpdesk_url(@helpdesk)
    assert_response :success
  end

  test "should get edit" do
    get edit_helpdesk_url(@helpdesk)
    assert_response :success
  end

  test "should update helpdesk" do
    patch helpdesk_url(@helpdesk), params: { helpdesk: { cachorro: @helpdesk.cachorro, gato: @helpdesk.gato, id_seq: @helpdesk.id_seq, valor: @helpdesk.valor } }
    assert_redirected_to helpdesk_url(@helpdesk)
  end

  test "should destroy helpdesk" do
    assert_difference('Helpdesk.count', -1) do
      delete helpdesk_url(@helpdesk)
    end

    assert_redirected_to helpdesks_url
  end
end
