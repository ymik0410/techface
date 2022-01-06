class MenteesController < ApplicationController
  before_action :set_mentee, only: [:show, :edit, :update]

  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)
    if @mentee.save
      redirect_to root_path
    end
  end

  def show

  end

  def edit
  end

  def update
    @mentee.update(mentee_params)
    redirect_to root_path
  end

  private

  def mentee_params
    params.require(:mentee).permit(:name, :email, :phone_number, :job, :industry, :experience, :profile, :reason, :help, :expectations)
  end

  def set_mentee
    # @mentee = Mentee.find(params[:id])
  end
end
