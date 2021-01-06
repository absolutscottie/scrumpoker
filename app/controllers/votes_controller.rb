class VotesController < ApplicationController
    def create
        vp = vote_params
        vote = Vote.find_by("username = ? AND poker_id = ?", vp[:username], vp[:poker_id])
        if vote != nil
            vote.value = vp[:value]
        else
            vote = Vote.new(vp)
        end

        if vote.save
            head :ok
        else
            head :bad_request
        end
    end

    private
    def vote_params
        params.require(:vote).permit(:username, :value, :poker_id)
    end
end
