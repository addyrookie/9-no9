class KakasController < ApplicationController
  def index
  # @new_list_milan = MilanRss.all(:limit = 10) 
    @milan_list  =  MilanRss.paginate(:page => params[:page] , :per_page => 5 , :order => "published_at desc")
  end
  
  def self.new_list_milan
    @new_list_milan = MilanRss.all(:limit => 10) 
  end    
 
end
