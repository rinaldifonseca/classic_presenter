class PresenterGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :presenter_name, :type => :string

  desc "Generates a Presenter Class"
  def generate_presenter
    template "presenter.rb", "app/presenters/#{presenter_name.underscore}_presenter.rb"
  end
end

