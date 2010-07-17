
class SpidersController < ApplicationController


  def index
    #@feed_list =  FeedEntry.all(:limit => 20 , :order => "published_at desc")
    # @spider =  FeedEntry.paginate(:page => params[:page] ,:order => "published_at desc"  )
      @inter_items  = IntersController.new_list_inter 
      @milan_items  = KakasController.new_list_milan
       
      
       
  end

  def new
     @inter_new = IntersController.first_item
  end

end
