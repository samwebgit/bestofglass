class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :favoritable, polymorphic: true, index: true
      t.references :user, index: true, foreign_key: true
      t.integer :type, index: true


      t.timestamps null: false
    end
  end
end
