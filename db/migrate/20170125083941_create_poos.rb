class CreatePoos < ActiveRecord::Migration[5.0]
  def change
    create_table :poos do |t|
      t.string :name

      t.timestamps
    end
  end
end
