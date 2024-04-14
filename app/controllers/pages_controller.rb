class PagesController < ApplicationController
    def home
    end

    def about
        # => Fetch members of the team
        @members = ['brian', 'clement', 'romain']
        # Member.all

        # raise

        if params[:member]
            @members = @members.select { |member| member.start_with?(params[:member]) }
        end
    end

    def contact
    end
end
