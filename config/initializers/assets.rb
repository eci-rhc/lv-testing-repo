Rails.application.config.assets.enabled = true
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.precompile = ['*.js', '*.css', '*.css.erb', '*.svg']