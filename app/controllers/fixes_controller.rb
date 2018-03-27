class FixesController < ApplicationController
    def new
        @fear = Fear.find(params[:fear_id])
        @fixes = Fix.where(fear_id: params[:fear_id])
        @preventions = Prevention.where(fear_id: params[:fear_id])
        @fix = Fix.new
    end

    def create
        @fix = Fix.new(fix_params)
        @fix.fear_id = params[:fear_id]
        @fix.save!
        redirect_to new_fear_fix_path
    end

    private

    def fix_params
        params.require(:fix).permit(:description, :fear_id)
    end       
end
