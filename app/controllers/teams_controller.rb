class TeamsController < ApplicationController
  def new
    @competition = Competition.find(params[:competition_id])
  end

  def create
    competition = Competition.find(params[:competition_id])
    competition.teams.create!(nickname: params[:nickname], hometown: params[:hometown])
    # do i need to create this in the joins table TeamCompetitions?

    redirect_to "/competitions/#{params[:competition_id]}"
  end

  # private
  # def _params
  #   params.permit(:)
  # end
end
