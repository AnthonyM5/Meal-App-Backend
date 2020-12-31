class AddImgUrlToMeals < ActiveRecord::Migration[6.0]
  def change
    add_column :meals, :img_url, :string
  end
end
