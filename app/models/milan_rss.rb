require 'feedzirra'
class MilanRss < ActiveRecord::Base

  @feed_url = "http://www.acmilan.com/RSS.aspx?lang=1033&type=1"
  def self.update_from_feed
    feed = Feedzirra::Feed.fetch_and_parse(@feed_url)
    feed.entries.each do |entry|
    #   break  unless self.first.published_at == entry.published
      create!(
          :name          => entry.title ,
          :summary       => entry.summary , 
          :url           => entry.url , 
          :published_at  => entry.published       
        )
    end    
  end
    
  def self.update
     updated_feed = Feedzirra::Feed.update(@feed_url)
    if updated_feed.updated?
      updated_feed.new_entries.each do |entry|
        Master.create!(
          :name          => entry.title ,
          :summary       => entry.summary , 
          :url           => entry.url , 
          :published_at  => entry.published      
        )
      end
    end
  end 
  
  
      
end    
    
    
     


