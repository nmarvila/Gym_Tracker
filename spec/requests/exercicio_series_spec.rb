require 'spec_helper'

describe "ExercicioSeries" do
  describe "GET /exercicio_series" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get exercicio_series_path
      response.status.should be(200)
    end
  end
end
