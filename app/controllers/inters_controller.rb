class IntersController < ApplicationController
  def index
    #@new_list_inter = InterRss.all(:limit => 10)
    @feed_list = InterRss.paginate(:page => params[:page] , :per_page => 4 ,:order => "published_at desc" )
  end
  
  def self.new_list_inter
    @new_list_inter = InterRss.all(:limit => 10)
  end  

  def self.first_item
    InterRss.first
  end  
end
