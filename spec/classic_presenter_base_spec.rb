require File.dirname(__FILE__) + "/spec_helper"

describe ClassicPresenter::Base do
  describe "instance methods" do
    let(:decorated_object) { decorated_object = [] }
    let(:context) { double }
    let(:objects) { {:foo => :bar, :bar => :foo} }

    subject { described_class.new decorated_object, context, objects }

    it "delegates all methods to decorated object" do
      decorated_object.should_receive(:size)
      subject.size
    end

    it "assigns all objects" do
      subject.foo.should == :bar
      subject.bar.should == :foo
    end

    it "assigns the context" do
      subject.context.should == context
    end
  end

  describe "class methods" do
    let(:collection) { [double] }
    subject { described_class }

    it "maps a collection with a presenter" do
      decorated_collection = described_class.map collection
      decorated_collection[0].class.should eq ClassicPresenter::Base
    end
  end
end
