# frozen_string_literal: true

class PerfilUsuariosController < ApplicationController
  before_action :set_perfil_usuario, only: %i[show edit update destroy]

  def index
    @perfil_usuarios = PerfilUsuario.all
  end

  def show; end

  def new
    @perfil_usuario = PerfilUsuario.new
  end

  def edit; end

  def create
    @perfil_usuario = PerfilUsuario.new(perfil_usuario_params)

    respond_to do |format|
      if @perfil_usuario.save
        format.html { redirect_to @perfil_usuario, notice: 'Perfil adicionado ao usuario com sucesso' }
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
      format.html { redirect_to perfil_url, notice: 'Perfil do usuario deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  def set_perfil_usuario
    @perfil_usuario = PerfilUsuario.find(params[:id])
  end

  def perfil_usuario_params
    params.require(:perfil).permit(:nome_perfil)
  end
end
