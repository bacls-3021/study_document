class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.text :title, null: false
      t.text :document_url
      t.references :category, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
