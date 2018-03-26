class BenefitsController < ApplicationController
    def new
        @challenge = Challenge.find(params[:challenge_id])
        @fears = Fear.where(challenge_id: params[:challenge_id])
        @benefits = Benefit.where(challenge_id: params[:challenge_id])
        @benefit = Benefit.new
      end

    def create
        @benefit = Benefit.new(benefit_params)
        @benefit.challenge_id = params[:challenge_id]
        @benefit.save!
        redirect_to new_challenge_benefit_path
    end
    
    private

    def benefit_params
        params.require(:benefit).permit(:description, :challenge_id)
    end    
end
