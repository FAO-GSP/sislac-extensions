require 'countries'

module Sislac
  class Engine < ::Rails::Engine
    # The hosting application calls Rails.configuration.engine to access this
    # engine's methods
    config.engine = Sislac

    # Make every asset visible on main app
    config.assets.precompile += %w(
      sislac/app.svg
    )

    config.after_initialize do
      # AN/ANT is dissolved, so it's not recognizable by 'countries'
      # gem. It is added as an exception here so we can process
      # historic data.
      #
      # See https://github.com/FAO-GSP/SISLAC/issues/3
      ISO3166::Data.register(
        alpha2: 'AN',
        alpha3: 'ANT',
        name: 'Netherlands Antilles',
        translations: {
          'en' => 'Netherlands Antilles',
          'es' => 'Antillas Holandesas'
        }
      )
    end
  end
end
