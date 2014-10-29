# Encounters controller
class EncountersController < ApplicationController
  def index
    @encounters = Encounter.all
  end

  def show
    @encounter = set_encounter
  end

  def create
    @encounter = Encounter.new(encounter_params)
    if @encounter.save
      redirect_to @encounter, notice: 'Энкаунтер создан.'
    else
      render :new
    end
  end

  def new
    authorize! :new, @encounter, message: 'Доступно только администратору.'
    @encounter = Encounter.new
  end

  def edit
    @encounter = set_encounter
  end

  def update
    @encounter = set_encounter
    if @encounter.update(encounter_params)
      redirect_to @encounter, notice: 'Энкаунтер обновлен.'
    else
      render :edit
    end
  end

  def destroy
    @encounter = set_encounter
    @encounter.destroy
    redirect_to encounters_path, notice: 'Энкаунтер удален.'
  end

  private

  def encounter_params
    params.require(:encounter).permit(:name, :style, :description, :expansion)
  end

  def set_encounter
    Encounter.find(params[:id])
  end
end
