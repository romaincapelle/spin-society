class CompetitionsController < ApplicationController
  before_action :set_club, only: [:new, :create]

  def show
    @competition = Competition.find(params[:id])
  end

  def new
    @competition = Competition.new
  end

  def create
    # Create a new competition from the form data
    @competition = Competition.new(competition_params)
    # Set the club for the competition
    @competition.club = @club # No need to mention the id of the club because of the belongs_to association in the Competition model (club_id)

    if @competition.save
      # Redirect to the club page
      redirect_to club_path(@club)
    else
      # Render the new competition form again
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @competition = Competition.find(params[:id])
    @competition.destroy
    redirect_to club_path(@competition.club), status: :see_other  # We are using the club method in the competition model to get the club of the competition, that's why in the route we don't need to pass the club_id
  end

  private

    def competition_params
        params.require(:competition).permit(:start_date, :length_in_days, :winner)
    end

    def set_club
      @club = Club.find(params[:club_id])
    end

end
