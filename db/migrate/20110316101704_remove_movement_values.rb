class RemoveMovementValues < ActiveRecord::Migration
  def self.up
    Movementfrom.delete_all()
    Movementto.delete_all()
  end

  def self.down
  end
end
