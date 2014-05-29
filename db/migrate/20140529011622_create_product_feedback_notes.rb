class CreateProductFeedbackNotes < ActiveRecord::Migration
  def change
    create_table :product_feedback_notes do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :feedback_id
      t.string :content

      t.timestamps
    end
  end
end
