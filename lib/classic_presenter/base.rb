module ClassicPresenter
  class Base < SimpleDelegator
    attr_accessor :context

    def initialize(model, context = nil, objects = {})
      objects.each do |key, value|
        self.class.send :define_method, key do
          value
        end
      end

      @context = context
      super model
    end

    def self.map(collection, context = nil)
      collection.map {|item| self.new(item, context)}
    end
  end
end

