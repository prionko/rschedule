class CreateFrequencies < ActiveRecord::Migration
  def self.up
    create_table :frequencies do |t|
      t.string :frequency
      t.timestamps
    end
    Frequency.create(:frequency => '1 minute')
    Frequency.create(:frequency => '5 minutes')
    Frequency.create(:frequency => '15 minutes')
    Frequency.create(:frequency => '30 minutes')
    Frequency.create(:frequency => '60 minutes')
    Frequency.create(:frequency => '2 hours')
    Frequency.create(:frequency => '5 hours')
  end

  def self.down
    drop_table :frequencies
  end
end
