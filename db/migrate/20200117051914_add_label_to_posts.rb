class AddLabelToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :label, :string
  end
end
