class FearsController < ApplicationController
    def create
        @fear = Fear.new(fear_params)
        @fear.challenge_id = params[:challenge_id]
        @fear.save!
        redirect_to new_challenge_benefit_path
    end

    private

    def fear_params
        params.require(:fear).permit(:description, :challenge_id)
    end  
end
