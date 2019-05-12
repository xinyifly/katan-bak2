class CandidatesController < ApplicationController
  # GET /candidates
  # GET /candidates.json
  def index
    @candidates = User.all
  end
end
