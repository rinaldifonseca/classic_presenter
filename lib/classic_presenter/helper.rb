module ClassicPresenter
  module Helper
    extend self

    def present(presenter_class, model = nil, objects = {})
      presenter = presenter_class.new(model, self, objects)
      yield presenter if block_given?
      presenter
    end
  end
end
