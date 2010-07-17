require 'feedzirra'
class InterRss < ActiveRecord::Base
 # @feed_url = "http://www.inter.it/aas/rss/index_en.xml"
  def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |entry|
      create!(
          :name          => entry.title ,
          :summary       => entry.summary , 
          :url           => entry.url , 
          :published_at  => entry.published       
        )   
    end  
  end
  
  
   def self.update_now(feed_url)
    updated_feed = Feedzirra::Feed.update(feed_url)
    if updated_feed.updated?
      updated_feed.new_entries.each do |entry|
        create!(
          :name          => entry.title ,
          :summary       => entry.summary , 
          :url           => entry.url , 
          :published_at  => entry.published    
        )
#       Master.create!(
#          :name          => entry.title ,
#          :summary       => entry.summary , 
#          :url           => entry.url , 
#          :published_at  => entry.published    
#        ) 
        
      end
    end
  end 
      
end




