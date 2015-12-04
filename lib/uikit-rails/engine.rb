module Uikit
  module Rails
    class Engine < ::Rails::Engine
      initializer 'uikitten-gem.assets.precompile' do |app|
        %w(stylesheets javascripts fonts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        unless Sprockets::Rails::VERSION.split('.', 2)[0].to_i >= 3
          app.config.assets.precompile << %r(fontawesome-webfont\.(?:ttf|woff2?)$)
          app.config.assets.precompile << 'FontAwesome.otf'
        end
      end
    end
  end
end
