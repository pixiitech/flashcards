require 'test_helper'

class AnswerKeywordsControllerTest < ActionController::TestCase
  setup do
    @answer_keyword = answer_keywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_keywords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_keyword" do
    assert_difference('AnswerKeyword.count') do
      post :create, answer_keyword: { case_sensitive: @answer_keyword.case_sensitive, order: @answer_keyword.order, question_id: @answer_keyword.question_id, text: @answer_keyword.text }
    end

    assert_redirected_to answer_keyword_path(assigns(:answer_keyword))
  end

  test "should show answer_keyword" do
    get :show, id: @answer_keyword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_keyword
    assert_response :success
  end

  test "should update answer_keyword" do
    patch :update, id: @answer_keyword, answer_keyword: { case_sensitive: @answer_keyword.case_sensitive, order: @answer_keyword.order, question_id: @answer_keyword.question_id, text: @answer_keyword.text }
    assert_redirected_to answer_keyword_path(assigns(:answer_keyword))
  end

  test "should destroy answer_keyword" do
    assert_difference('AnswerKeyword.count', -1) do
      delete :destroy, id: @answer_keyword
    end

    assert_redirected_to answer_keywords_path
  end
end
