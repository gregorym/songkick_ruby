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
      key     = "hello world"
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

end