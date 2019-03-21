class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    create_table :pictures do |t|
      t.string :name
      t.string :img_url
      t.references :user, foreign_key: true
      t.references :spec, foreign_key: true
      t.hstore :measurements

      t.timestamps
    end
  end
end
