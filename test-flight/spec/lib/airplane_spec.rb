require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150) }

  describe "#initialization" do
    it "has a type, wing_loading, horsepower" do
      expect(my_plane.type).to eq("cesna")
      expect(my_plane.wing_loading).to eq(10)
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    it "starts the engine" do
      expect(my_plane.start).to eq("airplane started")
    end
    it "airplane already started" do
      my_plane.start
      expect(my_plane.start).to eq("airplane already started")
    end
  end

  describe "#land" do
    it "lands the plane" do
      my_plane.start
      my_plane.takeoff
      expect(my_plane.land). to eq("airplane landed")
    end
    it "airplane not started" do
      expect(my_plane.land).to eq("airplane not started, please start")
    end
  end

  describe "#takeoff" do
    it "takes off" do
      expect(my_plane.takeoff).to eq("airplane launched")
    end
    it "airplane not started" do
      my_plane.start
      expect(my_plane.takeoff). to eq("airplane not started, please start")
    end
  end
end
