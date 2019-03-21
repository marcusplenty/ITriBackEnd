class CreateSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :specs do |t|
      t.string :img_url
      t.string :purchase_link

      t.timestamps
    end
  end
end
