require_dependency "search_engine/application_controller"

module SearchEngine
  class SearchController < ApplicationController

    def new
      @results = client.query(params)
      render json: {}, status: 200
    end

    private

    def client
    end
  end
end
