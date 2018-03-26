class ChallengesController < ApplicationController
    def index
        @challenges = Challenge.where(user_id: current_user)
    end
    
    def show
        @challenge = Challenge.find(params[:id])
    end

    def new
        @challenge = Challenge.new
    end

    def create
        @challenge = Challenge.new(challenge_params)
        @challenge.user = current_user
        # get benefit
        # get fear (and sub preventions and fixes)
        # get consequences of inaction
        @challenge.save!
        redirect_to new_challenge_benefit_path(@challenge)
    end

    def edit
    end

    def update
    end

    def destroy
        @challenge = Challenge.find(params[:id])
        @challenge.destroy
        redirect_to root_path
    end

    private

    def challenge_params
        params.require(:challenge).permit(:description, :name, :acceptable, :cost_inaction_hy, :cost_inaction_yr, :cost_inaction3y, :user_id)
    end
end
