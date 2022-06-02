class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name,               null: false
      t.string :icon,               null: false, default: "https://www.cnbc.com/2014/08/12/11-companies-spending-money-to-make-money.html"
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
