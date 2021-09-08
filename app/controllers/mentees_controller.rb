class MenteesController < ApplicationController
  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(params[:mentee])
  end
end
