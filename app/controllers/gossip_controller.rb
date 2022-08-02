class GossipController < ApplicationController
  def show

  end

  def new

  end
  
  def create
    @gossip = Gossip.new('user_id' => 11, 'title' => params[:title],'content' => params[:content])
    if @gossip.save
      render "index"
    else
      render "new"
    end    
  end

  def index
    
  end

  def index_success

  end

  def new_fail
    
  end
end