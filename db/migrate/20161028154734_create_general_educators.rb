class CreateGeneralEducators < ActiveRecord::Migration
  def change
    create_table :general_educators do |t|
      t.string :name
      t.integer :rating

      t.timestamps null: false
    end
  end
end
