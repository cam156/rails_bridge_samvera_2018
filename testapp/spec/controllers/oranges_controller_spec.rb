# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrangesController, type: :controller do
  let(:orange) { Orange.create(tree: Tree.new) }
  context '#index' do
    before do
      get :index
    end

    it 'renders the index view' do
      expect(response).to render_template('index')
    end

    it 'renders html' do
      expect(response.content_type).to eq 'text/html'
    end

    it 'lists the organge' do
      expect(assigns(:oranges)).to eq([orange])
    end
  end

  context '#new' do
    before do
      get :new
    end

    it 'renders the index view' do
      expect(response).to render_template('new')
    end

    it 'renders html' do
      expect(response.content_type).to eq 'text/html'
    end

    it 'lists the organge' do
      expect(assigns(:orange).attributes).to eq(Orange.new.attributes)
    end
  end
end
