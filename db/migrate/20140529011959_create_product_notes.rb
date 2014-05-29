class CreateProductNotes < ActiveRecord::Migration
  def change
    create_table :product_notes do |t|
      t.integer :product_id
      t.boolean :isprivate
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
