class RenameTests < ActiveRecord::Migration
  def change
    rename_table :tests, :challenges
    rename_table :questions_tests, :challenges_questions
    rename_column :challenges_questions, :test_id, :challenge_id
  end
end
