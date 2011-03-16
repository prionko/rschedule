class CreateRobots < ActiveRecord::Migration
  def self.up
    create_table :robots do |t|
      t.string :name
      t.timestamps
    end

    Robot.create(:name => "Robot 1")
    Robot.create(:name => "Robot 2")
    Robot.create(:name => "Robot 3")
    Robot.create(:name => "Robot 4")
    Robot.create(:name => "Robot 5")
  end

  def self.down
    drop_table :robots
  end
end
