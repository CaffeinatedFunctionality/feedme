require 'test_helper'

class UserNotesControllerTest < ActionController::TestCase
  setup do
    @user_note = user_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_note" do
    assert_difference('UserNote.count') do
      post :create, user_note: { content: @user_note.content, user_id: @user_note.user_id }
    end

    assert_redirected_to user_note_path(assigns(:user_note))
  end

  test "should show user_note" do
    get :show, id: @user_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_note
    assert_response :success
  end

  test "should update user_note" do
    patch :update, id: @user_note, user_note: { content: @user_note.content, user_id: @user_note.user_id }
    assert_redirected_to user_note_path(assigns(:user_note))
  end

  test "should destroy user_note" do
    assert_difference('UserNote.count', -1) do
      delete :destroy, id: @user_note
    end

    assert_redirected_to user_notes_path
  end
end
