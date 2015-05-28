class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :lesson, index: true
      t.references :word, index: true
      t.references :answer, index: true

      t.timestamps null: false
    end
    add_foreign_key :results, :lessons
    add_foreign_key :results, :words
    add_foreign_key :results, :answers
  end
end
