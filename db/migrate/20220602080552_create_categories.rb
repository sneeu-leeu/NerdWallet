class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name,               null: false
      t.string :icon,               null: false, default: "https://image.cnbcfm.com/api/v1/image/101913928-94989168.jpg?v=1532564437"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
