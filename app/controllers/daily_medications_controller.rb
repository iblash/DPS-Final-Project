class DailyMedicationsController < ApplicationController
  def index
    @daily_medications = Daily_Medication.all
  end

  def show
    @Daily_Medication = Daily_Medication.find(params[:id])
  end

  def new
    @daily_medication = Daily_Medication.new
  end

  def create
    @daily_medication = Daily_Medication.new(user_params)

    if @daily_medication.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @daily_medication = Daily_Medication.find(params[:id])
  end

  def update
    @daily_medication = Daily_Medication.find(params[:id])

    if @daily_medication.update(daily_medication_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @daily_medication = Daily_Medication.find(params[:id])
    @daily_medication.destroy

    redirect_to daily_medications_path
  end

  private
    def daily_medication_params
      params.require(:daily_medication).permit(:name, :email, :password, :password_confirmation)
    end
end
