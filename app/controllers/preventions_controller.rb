class PreventionsController < ApplicationController
    def new
        @fear = Fear.find(params[:fear_id])
        @preventions = Prevention.where(fear_id: params[:fear_id])
        @fixes = Fix.where(fear_id: params[:fear_id])
        @prevention = Prevention.new
    end

    def create
        @prevention = Prevention.new(prevention_params)
        @prevention.fear_id = params[:fear_id]
        @prevention.save!
        redirect_to new_fear_prevention_path
    end

    private

    def prevention_params
        params.require(:prevention).permit(:description, :fear_id)
    end    
end
