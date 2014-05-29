require 'test_helper'

class ProductFeedbackNotesControllerTest < ActionController::TestCase
  setup do
    @product_feedback_note = product_feedback_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_feedback_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_feedback_note" do
    assert_difference('ProductFeedbackNote.count') do
      post :create, product_feedback_note: { content: @product_feedback_note.content, feedback_id: @product_feedback_note.feedback_id, product_id: @product_feedback_note.product_id, user_id: @product_feedback_note.user_id }
    end

    assert_redirected_to product_feedback_note_path(assigns(:product_feedback_note))
  end

  test "should show product_feedback_note" do
    get :show, id: @product_feedback_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_feedback_note
    assert_response :success
  end

  test "should update product_feedback_note" do
    patch :update, id: @product_feedback_note, product_feedback_note: { content: @product_feedback_note.content, feedback_id: @product_feedback_note.feedback_id, product_id: @product_feedback_note.product_id, user_id: @product_feedback_note.user_id }
    assert_redirected_to product_feedback_note_path(assigns(:product_feedback_note))
  end

  test "should destroy product_feedback_note" do
    assert_difference('ProductFeedbackNote.count', -1) do
      delete :destroy, id: @product_feedback_note
    end

    assert_redirected_to product_feedback_notes_path
  end
end
