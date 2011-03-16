class CreateMovementfroms < ActiveRecord::Migration
  def self.up
    create_table :movementfroms do |t|
      t.string :move_from
      t.timestamps
    end
    Movementfrom.create(:move_from => 'Left')
    Movementfrom.create(:move_from => 'Right')
    
  end

  def self.down
    drop_table :movementfroms
  end
end
