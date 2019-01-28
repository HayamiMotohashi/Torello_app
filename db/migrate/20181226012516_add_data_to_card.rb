class AddDataToCard < ActiveRecord::Migration[5.2]
  def up
    Card.create(:title '部屋掃除', :detail '部屋の掃除をする', :checklist 'お風呂場')
  end

  def down
    Card.destroy_all
  end
end
