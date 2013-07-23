class CreateQuestionsTestsJoin < ActiveRecord::Migration
  def self.up
    create_table 'questions_tests', :id => false do |t|
      t.column :question_id, :integer
      t.column :test_id, :integer
    end
  end

  def self.down
    drop_table 'questions_tests'
  end
end
