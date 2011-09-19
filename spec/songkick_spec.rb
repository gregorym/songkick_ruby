require "./lib/songkick.rb"

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
end