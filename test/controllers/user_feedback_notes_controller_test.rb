require 'test_helper'

class UserFeedbackNotesControllerTest < ActionController::TestCase
  setup do
    @user_feedback_note = user_feedback_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_feedback_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_feedback_note" do
    assert_difference('UserFeedbackNote.count') do
      post :create, user_feedback_note: { content: @user_feedback_note.content, feedback_id: @user_feedback_note.feedback_id, user_id: @user_feedback_note.user_id }
    end

    assert_redirected_to user_feedback_note_path(assigns(:user_feedback_note))
  end

  test "should show user_feedback_note" do
    get :show, id: @user_feedback_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_feedback_note
    assert_response :success
  end

  test "should update user_feedback_note" do
    patch :update, id: @user_feedback_note, user_feedback_note: { content: @user_feedback_note.content, feedback_id: @user_feedback_note.feedback_id, user_id: @user_feedback_note.user_id }
    assert_redirected_to user_feedback_note_path(assigns(:user_feedback_note))
  end

  test "should destroy user_feedback_note" do
    assert_difference('UserFeedbackNote.count', -1) do
      delete :destroy, id: @user_feedback_note
    end

    assert_redirected_to user_feedback_notes_path
  end
end
