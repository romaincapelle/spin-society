class ClubsController < ApplicationController
    # => Fetch a club
    before_action :set_club, only: [:show, :edit, :update, :destroy]

    def index
        # => Fetch clubs
        @clubs = Club.all
    end

    def show
        # help to debug
        # raise
        # then im the console you can see the params by typing "params"

        # => Fetch a club -> Done in Private
    end
p
    def new
        # => Create a new club
        @club = Club.new
    end

    def create
        # TODO - Add the logo to the club
        # @club = Club.new(params[:club].permit(:name, :description, :logo))

        # => Create a new club
        @club = Club.new(params[:club].permit(club_params))
        if @club.save
            redirect_to clubs_path
        else
            render :new
        end
    end

    def edit
        # => Fetch a club -> Done in Private
    end

    def update
        # => Fetch a club
        # @club = Club.find(params[:id]) is done by the before_action
        if @club.update(params[:club].permit(:name, :description))
            redirect_to club_path(@club)
        else
            render :edit
        end
    end

    def destroy
        # => Fetch a club -> Done in Private
        @club.destroy
        redirect_to clubs_path, status: :see_other
    end

    private

    def set_club
        @club = Club.find(params[:id])
    end

    def club_params
        params.require(:club).permit(:name, :description).require(:name)
    end

end
