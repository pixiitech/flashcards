class CreateAnswerKeywords < ActiveRecord::Migration
  def change
    create_table :answer_keywords do |t|
      t.string :text
      t.boolean :case_sensitive
      t.integer :order
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
