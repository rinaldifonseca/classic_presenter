require File.dirname(__FILE__) + "/spec_helper"

class DummyPresenter < ClassicPresenter::Base
  def foo
    target.foo.upcase
  end
end

describe DummyPresenter do
  describe "instance methods" do
    let(:subject) { described_class.new(OpenStruct.new(foo: "bar")) }

    it "calls the presenter method using the target" do
      subject.foo.should == "BAR"
    end
  end
end
