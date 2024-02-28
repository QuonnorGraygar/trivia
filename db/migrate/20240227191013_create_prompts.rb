class CreatePrompts < ActiveRecord::Migration[7.1]
  def change
    create_table :prompts do |t|
      t.string :category
      t.string :style
      t.text :question
      t.text :answer
      t.integer :value

      t.timestamps
    end
  end
end
