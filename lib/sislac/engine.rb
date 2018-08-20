module Sislac
  class Engine < ::Rails::Engine
    # Make every asset visible on main app
    config.assets.precompile += %w(
      sislac/app.svg
    )
  end
end
