class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.text :content, null: false
      t.references :category, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
