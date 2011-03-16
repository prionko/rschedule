class CreateMovementtos < ActiveRecord::Migration
  def self.up
    create_table :movementtos do |t|
      t.string :move_to
      t.timestamps
    end

    Movementto.create(:move_to => 'Left')
    Movementto.create(:move_to => 'Right')
  end

  def self.down
    drop_table :movementtos
  end
end
