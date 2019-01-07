class AddDataToList < ActiveRecord::Migration[5.2]
  def up
    List.create(:title 'やること')
  end

  def down
    List.destroy_all
  end
end
