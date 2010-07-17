class CreateMilanRsses < ActiveRecord::Migration
  def self.up
    create_table :milan_rsses do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :milan_rsses
  end
end
