class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :text
      t.integer :parent_id
      t.integer :child_count
      t.integer :match_count

      t.timestamps
    end
  end
end
