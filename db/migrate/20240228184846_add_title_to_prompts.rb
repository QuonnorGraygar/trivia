class AddTitleToPrompts < ActiveRecord::Migration[7.1]
  def change
    add_column :prompts, :title, :string
  end
end
