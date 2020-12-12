class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :content
      t.references :list, null: false, foreign_key: true
      t.belongs_to :list, class_name: 'list', foreign_key: 'list_id'
      t.timestamps
    end
  end
end
