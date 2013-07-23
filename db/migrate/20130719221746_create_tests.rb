class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :overall_difficulty
      t.string :genre

      t.timestamps
    end
  end
end
