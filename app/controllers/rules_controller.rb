class RulesController < ApplicationController
  before_action :set_rule, only: [:show, :edit, :update, :destroy]

  # GET /rules
  def index
    @rules = Rule.all
  end

  # GET /rules/1
  def show
  end

  # GET /rules/new
  def new
    @rule = Rule.new
    @games = Game.all
  end

  # GET /rules/1/edit
  def edit
    @games = Game.all
  end

  # POST /rules
  def create
    @rule = Rule.new(rule_params)
   
    if @rule.save
      redirect_to root_path, notice: 'Rule was successfully created.'
    else
      @games = Game.all
      render :new
    end
  end

  # PATCH/PUT /rules/1
  def update
    if @rule.update(rule_params)
      redirect_to @rule, notice: 'Rule was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rules/1
  def destroy
    @rule.destroy
    redirect_to rules_url, notice: 'Rule was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rule
      @rule = Rule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rule_params
      params.require(:rule).permit(:game_id, :description, :document_pdf, :game_pieces)
    end
end
