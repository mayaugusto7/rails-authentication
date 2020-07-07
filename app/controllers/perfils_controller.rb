# frozen_string_literal: true

class PerfilsController < ApplicationController
  before_action :set_perfil, only: %i[show edit update destroy]

  def index
    @perfis = Perfil.all
  end

  def show; end

  def new
    @perfil = Perfil.new
  end

  def edit; end

  def create
    @perfil = Perfil.new(perfil_params)

    respond_to do |format|
      if @perfil.save
        format.html { redirect_to @perfil, notice: 'Perfil salvo com sucesso' }
        format.json { render :show, status: :created, location: :perfil }
      else
        format.html { render :new }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @perfil.update(perfil_params)
        format.html { redirect_to @perfil, notice: 'Perfil atualizado com sucesso' }
        format.json { render :show, status: :ok, location: :perfil }
      else
        format.html { render :edit }
        format.json { render json: @perfil.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @perfil.destroy
    respond_to do |format|
      format.html { redirect_to perfil_url, notice: 'Perfil deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  def set_perfil
    @perfil = Perfil.find(params[:id])
  end

  def perfil_params
    params.require(:perfil).permit(:nome_perfil)
  end
end
