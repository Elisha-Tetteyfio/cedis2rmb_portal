require "rails_helper"

RSpec.describe LimitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/limits").to route_to("limits#index")
    end

    it "routes to #new" do
      expect(get: "/limits/new").to route_to("limits#new")
    end

    it "routes to #show" do
      expect(get: "/limits/1").to route_to("limits#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/limits/1/edit").to route_to("limits#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/limits").to route_to("limits#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/limits/1").to route_to("limits#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/limits/1").to route_to("limits#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/limits/1").to route_to("limits#destroy", id: "1")
    end
  end
end
