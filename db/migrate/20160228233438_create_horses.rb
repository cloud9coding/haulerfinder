class CreateHorses < ActiveRecord::Migration
  def change
    create_table :horses do |t|
      t.string :breed
      t.float :age
      t.float :height
      t.float :weight
      t.references :bid_request, index: true

      t.timestamps
    end
  end
end
