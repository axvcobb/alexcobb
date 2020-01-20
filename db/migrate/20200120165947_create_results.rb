class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.time :gun_time
      t.time :chip_time
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
