class NursesController < ApplicationController

  def index
    @nurses = Nurse.all
  end

  def show
    @nurse = Nurse.find(params[:id])
  end

  def new
    @nurse = Nurse.new
  end

  def create
    @nurse = Nurse.new(nurse_params)

    if @nurse.save
      redirect_to @nurse
    else
      render 'new'
    end
  end

  def edit
    @nurse = Nurse.find(params[:id])
  end

  def update
    @nurse = Nurse.find(params[:id])

    if @nurse.update(nurse_params)
      redirect_to @nurse
    else
      render 'edit'
    end
  end

  def destroy
    @nurse = Nurse.find(params[:id])
    @nurse.destroy

    redirect_to nurse_path
  end

  private
    def nurse_params
      params.require(:nurse).permit(:name, :email, :password, :password_confirmation)
    end
end
