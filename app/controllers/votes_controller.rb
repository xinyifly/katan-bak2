class VotesController < ApplicationController
  before_action :set_vote, only: [:show]

  # GET /votes/1
  # GET /votes/1.json
  def show; end

  # GET /votes/new
  def new
    @vote = Vote.new
  end

  # POST /votes
  # POST /votes.json
  def create
    candidate = User.find(vote_params[:candidate_id])
    @vote = current_user.vote(candidate)

    respond_to do |format|
      if @vote.save
        format.html { redirect_to @vote, notice: 'Vote was successfully created.' }
        format.json { render :show, status: :created, location: @vote }
      else
        format.html { render :new }
        format.json { render json: @vote.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vote
    @vote = Vote.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vote_params
    params.require(:vote).permit(:candidate_id)
  end
end
