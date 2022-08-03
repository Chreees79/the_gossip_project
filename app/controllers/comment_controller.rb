class CommentController < ApplicationController
  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @gossip = Gossip.find(params[:id])
    @comment = Comment.create('user_id' => 11, 'gossip_id' => params[:id], 'content' => params[:comment].values_at(:content).split.join(" "))
    redirect_to gossip_path(@gossip.id)
  end

  def update    
    @comment = Comment.find(params[:id])
    if @comment.update(update_params)
      redirect_to gossip_path(@comment.gossip.id)
    else
      render "edit"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@comment.gossip.id)
  end

  private

  def update_params
    params.require(:comment).permit(:content)
  end
end

