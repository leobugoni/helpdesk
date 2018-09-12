class CreateHelpdesks < ActiveRecord::Migration[5.1]
  def change
    create_table :helpdesks do |t|
      t.string :cachorro
      t.string :id_seq
      t.text :gato
      t.decimal :valor

      t.timestamps
    end
  end
end
