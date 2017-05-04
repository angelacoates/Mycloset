class CreateClothings < ActiveRecord::Migration[5.0]
  def change
    create_table :clothings do |t|

      t.timestamps
    end
  end
end
