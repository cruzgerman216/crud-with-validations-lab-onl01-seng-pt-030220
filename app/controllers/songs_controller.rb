class SongsController < ApplicationController

  def index

  end
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    #  @author = Author.create(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end

  end

  def update
    @author = Author.find(params[:id])

    @author.update(author_params)

    redirect_to author_path(@post)
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
