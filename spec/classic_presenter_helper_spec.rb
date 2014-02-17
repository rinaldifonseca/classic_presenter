require File.dirname(__FILE__) + "/spec_helper"

describe ClassicPresenter::Helper do
  subject { described_class }

  it "yields with a new PresenterClass instance and return it" do
    presenter_class_as_param = [:value]
    presenter_class = double
    presenter_class.should_receive(:new).with(:model, described_class, :objects).and_return presenter_class_as_param
    subject.present(presenter_class, :model, :objects) do |presenter|
      presenter.pop
    end.should == []
  end
end

