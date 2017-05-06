class CreateGajimas < ActiveRecord::Migration
  def change
    create_table :gajimas do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
