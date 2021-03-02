require "test_helper"

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get Indicador" do
    get model_Indicador_url
    assert_response :success
  end

  test "should get fecha:datetime" do
    get model_fecha:datetime_url
    assert_response :success
  end

  test "should get valor:float" do
    get model_valor:float_url
    assert_response :success
  end
end
