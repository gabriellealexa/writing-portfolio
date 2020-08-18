class FeaturesController < ApplicationController

    def index
        features = Feature.all 
        render json: features
    end

    def create
        feature = Feature.create(feature_params)
        render json: feature

    end

    def show
        feature = Feature.find_by(id: params[:id])
        render json: feature
    end

    def destroy
        feature = Feature.find_by(id: params[:id])
        feature.destroy
    end

    private 

    def feature_params 
        params.require(:feature).permit!
    end

end
