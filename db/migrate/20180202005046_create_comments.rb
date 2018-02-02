class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_title
      t.text :comment_body
      t.integer :comment_parent_id

      t.timestamps
    end
  end
end
