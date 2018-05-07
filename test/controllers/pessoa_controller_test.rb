require 'test_helper'

class PessoaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pessoa_index_url
    assert_response :success
  end

  test "should get edit" do
    get pessoa_edit_url
    assert_response :success
  end

  test "should get show" do
    get pessoa_show_url
    assert_response :success
  end

end
