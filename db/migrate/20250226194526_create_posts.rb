class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post_content
      t.integer :author_id

      t.timestamps
    end
  end
end
