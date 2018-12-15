class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :type
      t.jsonb :data

      t.timestamps
    end
  end
end
