require "spec_helper"

describe ExercicioSeriesController do
  describe "routing" do

    it "routes to #index" do
      get("/exercicio_series").should route_to("exercicio_series#index")
    end

    it "routes to #new" do
      get("/exercicio_series/new").should route_to("exercicio_series#new")
    end

    it "routes to #show" do
      get("/exercicio_series/1").should route_to("exercicio_series#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exercicio_series/1/edit").should route_to("exercicio_series#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exercicio_series").should route_to("exercicio_series#create")
    end

    it "routes to #update" do
      put("/exercicio_series/1").should route_to("exercicio_series#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exercicio_series/1").should route_to("exercicio_series#destroy", :id => "1")
    end

  end
end
