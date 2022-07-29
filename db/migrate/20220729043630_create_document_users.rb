class CreateDocumentUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :document_users do |t|
      t.references :document, null: false
      t.references :user, null: false

      t.timestamps
    end
  end
end
