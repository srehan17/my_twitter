# frozen_string_literal: true

class CommentsController < ApplicationController
  # def index
  #   @comments = Comment.all.order('created_at DESC')
  # end
  #
  def new
    @tweet = Tweet.new
    @comment = @tweet.comments.find(params)
  end
  #
  # def create
  #   @tweet = Tweet.find(params[:tweet_id])
  #   @comment = @tweet.comments.build(comment_params)
  #   redirect_to tweet_path(@tweet)
  #   end
  #
  # private
  #
  # def comment_params
  #   params.require(:comment).permit(:body)
  # end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @comment = @tweet.comments.create(params[:comment].permit(:body))
    redirect_to tweet_path(@tweet)
  end

  def destroy; end
end
