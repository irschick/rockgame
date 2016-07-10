class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  def index
    puts 'games#index'
    @games = Game.all
  end

  def show
    puts 'games#show'
    puts '@game'
    puts @game
    puts '@game.getResult'
    puts @game.getResult
  end

  def create
    puts 'games#create'
    # @game = Game.new(game_params)
    puts '@game.getResult'
    puts @game.getResult
    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
    puts 'end of create method'
  end

  def new
    puts 'games#new'
    @game = Game.new(params[:game])
    puts 'myChoice='
    puts params[:myChoice]
    if params[:myChoice] != nil then
      result = @game.newGame(params[:myChoice])
    end
    puts 'result'
    puts result
    puts '@game.getResult'
    puts @game.getResult
    create
  end

  def edit
    puts 'games#edit'
  end

  def update
    puts 'games#update'
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end

  end

  def destroy
    puts 'games#destroy'
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.fetch(:game, {})
    end
end
