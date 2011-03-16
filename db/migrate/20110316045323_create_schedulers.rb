class CreateSchedulers < ActiveRecord::Migration
  def self.up
    create_table :schedulers do |t|
      t.string :shop_floor
      t.string :robot
      t.string :move_from
      t.string :move_to
      t.string :frequency
      t.timestamps
    end
  end

  def self.down
    drop_table :schedulers
  end
end
