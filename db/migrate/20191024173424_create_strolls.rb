class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
      t.references :city, foreign_key: true, index: true
      t.references :dog_sitter, foreign_key: true, index: true

      t.timestamps
    end
  end
end
