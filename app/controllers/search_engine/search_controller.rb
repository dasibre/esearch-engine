require_dependency "search_engine/application_controller"

module SearchEngine
  class SearchController < ApplicationController

    def new
      @results = client.query(params[:search_term])
      render :show
    end

    private

    def client
      @client ||= Struct.new(:name, :address) do
        def query(term)
          ["Hello #{term}!", "result"]
        end
      end.new
    end


  end
end
