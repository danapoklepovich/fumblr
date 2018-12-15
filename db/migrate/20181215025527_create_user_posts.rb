class CreateUserPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :user_posts do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.bigint :reblog_user
      t.boolean :original

      t.timestamps
    end
  end
end
