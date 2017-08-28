class TagsController < ApplicationController

  before_action :set_tag, only: [:destroy]

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag.destroy

    redirect_to tags_path
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

end
