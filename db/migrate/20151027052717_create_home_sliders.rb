class CreateHomeSliders < ActiveRecord::Migration
  def change
    create_table :home_sliders do |t|
      t.string :image
      t.string :title
      t.string :subtitle
      t.string :link

      t.timestamps null: false
    end
  end
end
