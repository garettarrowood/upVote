class VotesController < ApplicationController

  def create
    @vote = Vote.new
    if params[:commit] == "Upvote"
      @vote.vote_value = 1
    else
      @vote.vote_value = -1
    end
    @vote.post_id = params[:vote][:post_id].to_i
    @vote.save
    redirect_to post_path(@vote.post_id)
  end

end
