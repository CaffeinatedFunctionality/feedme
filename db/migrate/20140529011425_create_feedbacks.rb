class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :product_id
      t.string :feedback_type
      t.string :content

      t.timestamps
    end
  end
end
