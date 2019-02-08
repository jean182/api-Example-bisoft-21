class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :full_name
      t.date :birth
      t.text :bio

      t.timestamps
    end
  end
end
