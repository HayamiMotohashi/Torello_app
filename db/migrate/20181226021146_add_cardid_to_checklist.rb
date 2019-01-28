class AddCardidToChecklist < ActiveRecord::Migration[5.2]
  def change
    add_column :checklists, :card_id, :integer
  end
end
