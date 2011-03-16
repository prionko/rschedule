class AddMovementValues < ActiveRecord::Migration
  def self.up
    Movementfrom.create(:move_from => 'Point A')
    Movementfrom.create(:move_from => 'Point B')
    Movementfrom.create(:move_from => 'Point C')
    Movementfrom.create(:move_from => 'Point D')

    Movementto.create(:move_to => 'Point A')
     Movementto.create(:move_to => 'Point B')
      Movementto.create(:move_to => 'Point C')
       Movementto.create(:move_to => 'Point D')
  end

  def self.down
  end
end
