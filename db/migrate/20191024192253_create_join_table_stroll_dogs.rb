class CreateJoinTableStrollDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_stroll_dogs do |t|
      t.references :dog, foreign_key: true, index: true
      t.references :stroll, foreign_key: true, index: true

      t.timestamps
    end
  end
end
