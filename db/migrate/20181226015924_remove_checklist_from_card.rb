class RemoveChecklistFromCard < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :checklist, :string
  end
end
