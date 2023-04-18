class PrescriptionsController < ApplicationController
  def index
    @prescriptions = Prescription.all
  end

  def show
    @prescriptions = Prescriptions.find(params[:id])
  end

  def new
    @prescriptions = Prescriptions.new
  end

  def create
    @prescription = Prescription.new(prescription_params)

    if @prescription.save
      redirect_to @prescription
    else
      render 'new'
    end
  end

  def edit
    @prescription = Prescription.find(params[:id])
  end

  def update
    @prescription = Prescription.find(params[:id])

    if @prescription.update(prescription_params)
      redirect_to @prescription
    else
      render 'edit'
    end
  end

  def destroy
    @prescription = Prescriptions.find(params[:id])
    @prescription.destroy

    redirect_to prescriptions_path
  end

  private
    def prescription_params
      params.require(:prescription).permit(:name, :email, :password, :password_confirmation)
    end
end
