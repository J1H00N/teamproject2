class GajimasController < ApplicationController
  before_action :find_gajimas, only: [:show, :edit, :update, :destroy]
  
  
  def home
  end
  
  
  def index
    @gajimas = Gajima.all.order("created_at DESC")
  end
  
  def show
  end

  def new
    @gajima = Gajima.new
  end

  def create
    @gajima = Gajima.new(gajima_params)
    if @gajima.save
      redirect_to @gajima
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @gajima.update(gajima_params)
      redirect_to @gajima
    else
      render 'edit'
    end
  end

  def destroy
    @gajima.destroy
    redirect_to gajimas_path
  end
  
  def howtouse
  end
  
  def random
    @gajima = Gajima.order("RANDOM()").first
    redirect_to @gajima
  end
  
  private
  def gajima_params
    params.require(:gajima).permit(
      :title,
      :content,
      :image)
  end

  def find_gajimas
    @gajima = Gajima.find(params[:id])
  end

  

end
