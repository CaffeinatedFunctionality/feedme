class CreateUserFeedbackNotes < ActiveRecord::Migration
  def change
    create_table :user_feedback_notes do |t|
      t.integer :user_id
      t.integer :feedback_id
      t.string :content

      t.timestamps
    end
  end
end
