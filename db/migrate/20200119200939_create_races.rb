class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.string :event
      t.string :city
      t.string :state
      t.datetime :race_date
      t.string :website
      t.text :comment


      t.timestamps
    end
  end
end
