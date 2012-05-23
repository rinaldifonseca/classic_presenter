module ClassicPresenter
  class Railtie < Rails::Railtie
    initializer "classic_presenter.configure_rails_initialization" do |app|
      ActiveSupport.on_load :action_controller do
        helper ::ClassicPresenter::Helper
      end
    end
  end
end
