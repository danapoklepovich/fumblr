class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.text :description
      t.string :avatar_url

      t.timestamps
    end
  end
end
