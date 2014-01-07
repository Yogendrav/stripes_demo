class AddColumnToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :name, :string
    add_column :plans, :price, :decimal, :precision => 8, :scale => 2
  end
end
