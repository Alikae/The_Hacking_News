class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_title
      t.text :comment_body
      t.integer :comment_parent_id
      t.references :commentable, polymorphic: true , index: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
