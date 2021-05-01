class GamesController < ApplicationController
  
  def create
    @game = Game.new(game_params)

        respond_to do |format|
            if @game.save
                format.html { redirect_to root_path, notice: "Boardgame was successfully created." }
                format.json { render :show, status: :created, location: root_path }
            else
                format.html { render root_path, status: :unprocessable_entity }
                format.json { render json: @game.errors, status: :unprocessable_entity }
            end
        end
    end
    
    
    
    
    private
    def game_params
        params.require(:game).permit(:name, :boardimage)
  end
    
end
