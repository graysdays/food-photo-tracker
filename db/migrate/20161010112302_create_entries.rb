class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.text :description
      t.binary :image
      t.datetime :time
      t.string :location

      t.timestamps
    end
  end
end
