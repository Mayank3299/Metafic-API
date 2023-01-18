class CreateMacbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :macbooks do |t|
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
