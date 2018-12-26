class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.text :detail
      t.string :comment
      t.string :checklist

      t.timestamps
    end
  end
end
