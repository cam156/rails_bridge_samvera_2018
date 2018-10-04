require "rails_helper"

RSpec.describe OrangesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/oranges").to route_to("oranges#index")
    end

    it "routes to #new" do
      expect(:get => "/oranges/new").to route_to("oranges#new")
    end

    it "routes to #show" do
      expect(:get => "/oranges/1").to route_to("oranges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/oranges/1/edit").to route_to("oranges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/oranges").to route_to("oranges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/oranges/1").to route_to("oranges#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/oranges/1").to route_to("oranges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/oranges/1").to route_to("oranges#destroy", :id => "1")
    end

  end
end
