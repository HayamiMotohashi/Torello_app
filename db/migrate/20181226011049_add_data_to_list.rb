class AddDataToList < ActiveRecord::Migration[5.2]
  def change
    List.create(:title 'やること')
  end

  
end
