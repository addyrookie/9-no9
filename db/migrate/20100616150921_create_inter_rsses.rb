class CreateInterRsses < ActiveRecord::Migration
  def self.up
    create_table :inter_rsses do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :inter_rsses
  end
end
