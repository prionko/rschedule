class CreateFloors < ActiveRecord::Migration
  def self.up
    create_table :floors do |t|
      t.string  :floor_name
      t.timestamps
    end

    Floor.create(:floor_name => "Floor 1")
    Floor.create(:floor_name => "Floor 2")
    Floor.create(:floor_name => "Floor 3")

  end

  def self.down
    drop_table :floors
  end
end
