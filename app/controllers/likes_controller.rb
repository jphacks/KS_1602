class LikesController < ApplicationController
  def create
    @like = Like.create(user_id: current_user.id, want_id: params[:want_id])
    @likes = Like.where(want_id: params[:want_id])
    @wants = Want.all
  end
  def destroy
    like = Like.find_by(user_id: current_user.id, want_id: params[:want_id])
    like.destroy
    @likes = Like.where(want_id: params[:want_id])
    @wants = Want.all
  end

end
