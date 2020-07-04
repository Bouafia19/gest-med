# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( vendor/fontawesome-free/css/all.min.css )
Rails.application.config.assets.precompile += %w( css/sb-admin-2.css )
Rails.application.config.assets.precompile += %w( vendor/datatables/dataTables.bootstrap4.min.css )


Rails.application.config.assets.precompile += %w( vendor/jquery/jquery.min.js )
Rails.application.config.assets.precompile += %w( vendor/bootstrap/js/bootstrap.bundle.min.js )
Rails.application.config.assets.precompile += %w( vendor/jquery-easing/jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( js/sb-admin-2.min.js )
Rails.application.config.assets.precompile += %w( vendor/chart.js/Chart.min.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-area-demo.js )
Rails.application.config.assets.precompile += %w( js/demo/chart-pie-demo.js )


Rails.application.config.assets.precompile += %w( datatables/jquery.dataTables.min.js )
Rails.application.config.assets.precompile += %w( datatables/dataTables.bootstrap4.min.js )
Rails.application.config.assets.precompile += %w( js/demo/datatables-demo.js )



Rails.application.config.assets.precompile += %w( lib/leaflet.ajax.min.js )
Rails.application.config.assets.precompile += %w( lib/leaflet-search.css )
Rails.application.config.assets.precompile += %w( lib/leaflet-search.js )


Rails.application.config.assets.precompile += %w( lib/L.Control.Locate.min.js )
Rails.application.config.assets.precompile += %w( lib/L.Control.Locate.min.css )

Rails.application.config.assets.precompile += %w( lib/Control.Coordinates.css )
Rails.application.config.assets.precompile += %w( lib/Control.Coordinates.js )

Rails.application.config.assets.precompile += %w( lib/leaflet.browser.print.min.js )

Rails.application.config.assets.precompile += %w( lib/leaflet-routing-machine.css )
Rails.application.config.assets.precompile += %w( lib/leaflet-routing-machine.js )
Rails.application.config.assets.precompile += %w( lib/Control.Geocoder.js )
Rails.application.config.assets.precompile += %w( lib/config.js )


Rails.application.config.assets.precompile += %w( lib/best_in_place.jquery-ui.js )
Rails.application.config.assets.precompile += %w( lib/best_in_place.js )
Rails.application.config.assets.precompile += %w( lib/best_in_place.purr.js )
Rails.application.config.assets.precompile += %w( lib/jquery.autosize.js )
Rails.application.config.assets.precompile += %w( lib/jquery.purr.js )

Rails.application.config.assets.precompile += %w( rails.validations.js )