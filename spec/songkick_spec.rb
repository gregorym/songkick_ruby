require "./lib/songkick.rb"

API_KEY = "api key example"

describe Songkick do
  describe "#initialization" do
    
    it "should be a new intance of songkick" do
      client1 = Songkick.new("abc")
      client2 = Songkick::Client.new("abc")

      client1.class.name.should == "Songkick::Client"
      client2.class.name.should == "Songkick::Client"
    end

    it "should be json format" do 
      client = Songkick.new("abc")
      client.format.should == "json"
      client.json?.should be_true
    end

    it "should be xml format" do 
      client = Songkick.new("abc", :xml)
      client.format.should == "xml"
      client.xml?.should be_true
    end

  end

  describe "#Songkick request" do
    it "should fail with a wrong API key" do
      key     = "helloworld"
      client  = Songkick.new(key)
      
      response = client.search_artists("Blink 182")
      response["resultsPage"]["status"].should == "error"
    end

    it "should success with a valid API key" do 
      client  = Songkick.new(API_KEY)

      response = client.search_artists("Blink 182")
      response["resultsPage"]["status"].should == "ok"
    end
  end

  describe "#Songkick event" do
    before :each do
      @client = Songkick.new API_KEY
    end

    it "should find an event" do
      event = @client.find_event(3037536)
      event["resultsPage"]["status"].should == "ok"
      event["resultsPage"]["results"]["event"].is_a?(Hash) == true 
      event["resultsPage"]["results"]["event"]["displayName"].include?("Vampire") == true 
    end
  end

  describe "#Songkick calendar" do
    before :each do
      @client = Songkick.new API_KEY
    end

    it "should search events" do
      events = @client.search_events({:artist_name => "Coldplay"})
      events["resultsPage"]["totalEntries"].nil? == false
      events["resultsPage"]["totalEntries"].is_a?(Integer) == true
    end

    it "should search locations" do
      events = @client.search_locations({:query => "Paris"})
      events["resultsPage"]["totalEntries"].nil? == false
      events["resultsPage"]["totalEntries"].is_a?(Integer) == true
    end

    it "should search artists" do
      events = @client.search_artists("Coldplay")
      events["resultsPage"]["totalEntries"].nil? == false
      events["resultsPage"]["totalEntries"].is_a?(Integer) == true
    end

    it "should search venues" do
      events = @client.search_venues("Stade de france")
      events["resultsPage"]["totalEntries"].nil? == false
      events["resultsPage"]["totalEntries"].is_a?(Integer) == true
    end

  end

end