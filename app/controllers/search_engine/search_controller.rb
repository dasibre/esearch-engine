require_dependency "search_engine/application_controller"

module SearchEngine
  class SearchController < ApplicationController

    def new
      @results = client.search(q: params[:search_term])
      render :show
    end

    private

    def client
      @client ||= Elasticsearch::Client.new log: true
    end


  end
end
