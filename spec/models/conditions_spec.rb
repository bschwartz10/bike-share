require_relative "../spec_helper"
RSpec.describe Condition do
  # before :each do
  #   @conditions_for_date = Condition.create(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
  # end

  describe "validations" do
    it "is invalid without a date" do
      conditions_for_date = Condition.new(max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without a maximum temperature" do
      conditions_for_date = Condition.new(date: "14/3/2017", min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without a minimum temperature" do
      conditions_for_date = Condition.new(date: "14/3/2017", max_temp: 30.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without a mean temperature" do
      conditions_for_date = Condition.new(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without a mean humidity" do
      conditions_for_date = Condition.new(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without a mean visibility" do
      conditions_for_date = Condition.new(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without a mean wind speed" do
      conditions_for_date = Condition.new(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, precipitation: 0.03)
      expect(conditions_for_date).to_not be_valid
    end
    
    it "is invalid without precipitation" do
      conditions_for_date = Condition.new(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0)
      expect(conditions_for_date).to_not be_valid
    end

    it "should be valid with a date, max_temp, min_temp, mean_temp, mean_humidity, mean_visibility, mean_wind_speed, and precipitation" do
      conditions_for_date = Condition.create(date: "14/3/2017", max_temp: 30.0, min_temp: 20.0, mean_temp: 26.0, mean_humidity: 30.0, mean_visibility: 3.0, mean_wind_speed: 12.0, precipitation: 0.03)
      expect(conditions_for_date).to be_valid
    end
  end

  describe "attributes" do
    it "should have name, city, dock count, and an installation date" do
      conditions_for_date = Condition.new
      expect(conditions_for_date).to respond_to(:date)
      expect(conditions_for_date).to respond_to(:max_temp)
      expect(conditions_for_date).to respond_to(:min_temp)
      expect(conditions_for_date).to respond_to(:mean_temp)
      expect(conditions_for_date).to respond_to(:mean_humidity)
      expect(conditions_for_date).to respond_to(:mean_visibility)
      expect(conditions_for_date).to respond_to(:mean_wind_speed)
      expect(conditions_for_date).to respond_to(:precipitation)
    end
  end
end