class KittensController < ApplicationController
  before_action :set_kitten, only: %i[destroy]
  
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def create 
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      redirect_to @kitten, notice: 'Kitten created successfully'
    else 
      flash.now[:alert] = 'There was a problem creating the Kitten.'
      render :new
    end
  end

  def update 
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      redirect_to @kitten, notice: "kitten was updated successfully"
    else 
      flash.now[:alert] = 'There was a problem updating the Kitten.'
      render :edit
    end
  end

  def destroy 
    @kitten.destroy
    redirect_to kittens_path, notice: "Kitten is deleted successfully"
  end

  private

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
