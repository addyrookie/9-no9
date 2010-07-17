class CreateMasters < ActiveRecord::Migration
  def self.up
    create_table :masters do |t|
      t.string :name
      t.text :summary
      t.string :url
      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :masters
  end
end
