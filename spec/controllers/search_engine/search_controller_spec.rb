require 'rails_helper'

module SearchEngine
  RSpec.describe SearchController, type: :controller do
    include Engine.routes.url_helpers

    before do
      @routes = Engine.routes
    end

    describe 'Get new' do
      it "runs query using search client" do
        search_client = double('SearchClient')
        allow_any_instance_of(SearchController).to receive(:client).and_return(search_client)
        expect(search_client).to receive(:query).with('foobar')
        get :new, search_term: "foobar"
      end

      it "renders show template view" do
        search_client = double('SearchClient')
        allow_any_instance_of(SearchController).to receive(:client).and_return(search_client)
        allow(search_client).to receive(:query).with('foobar').and_return(%w(doc doc2))
        get :new, search_term: "foobar"
        expect(response).to render_template(:show)
      end

      it "assigns @results" do
        search_client = double('SearchClient')
        allow_any_instance_of(SearchController).to receive(:client).and_return(search_client)
        allow(search_client).to receive(:query).with('foobar').and_return(%w(doc doc2))
        get :new, search_term: "foobar"
        expect(assigns(:results)).to eq(['doc', 'doc2'])
      end
    end
  end
end
