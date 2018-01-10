require 'rails_helper'

module SearchEngine
  RSpec.describe SearchController, type: :controller do
    describe 'Get new' do
      it "runs search for given term" do
        search_client = double('SearchClient')
        allow_any_instance_of(SearchController).to receive(:client).and_return(search_client)
        get :new, { search_term: 'foobar' }
        expect(search_client).to receive(:query).with('foobar')
      end
    end
  end
end
