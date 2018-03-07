require "rails_helper"

RSpec.describe DipsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dips").to route_to("dips#index")
    end


    it "routes to #show" do
      expect(:get => "/dips/1").to route_to("dips#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dips").to route_to("dips#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dips/1").to route_to("dips#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dips/1").to route_to("dips#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dips/1").to route_to("dips#destroy", :id => "1")
    end

  end
end
