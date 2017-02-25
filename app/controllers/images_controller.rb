class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
  before_action :authenticate_user!, except: [:index]

  def search
    if params[:search].present?
      @images = Image.search(params[:search])
    else
      @images = Image.all
    end
  end

  def index
    @images = Image.all
  end

  def show
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @image.update(image_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @image.destroy
      redirect_to root_path
    end
  end

  def upvote
    @image.upvote_by current_user
    redirect_to :back
  end

  def downvote
    @image.downvote_by current_user
    redirect_to :back
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :description, :image, :user_id)
  end
end
