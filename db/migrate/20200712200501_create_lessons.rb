class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :lesson_title
      t.string :author
      t.string :topic
      t.text :purpose
      t.text :questions
      t.text :answer
      t.text :content
      t.text :examples
      t.string :link
      t.integer :rating
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
