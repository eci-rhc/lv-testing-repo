Rails.application.configure do

    config.cache_classes = false

    config.eager_load = false

    config.consider_all_requests_local       = true

    config.action_controller.perform_caching = true

    config.action_mailer.raise_delivery_errors = true

    config.action_mailer.perform_caching = false

    config.active_support.deprecation = :log

    config.assets.debug = true

    config.assets.quiet = true

    config.action_mailer.default_url_options = { :host => 'localhost:3000' }

    config.active_storage.service = :local

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = { :address => "localhost", :port => 1025 }

    # config.cache_store = :dalli_store, {:expires_in => 1.day, :compress => true}

    # config.active_record.migration_error = :page_load

    config.file_watcher = ActiveSupport::EventedFileUpdateChecker
    config.action_dispatch.default_headers = {'X-Frame-Options' => 'ALLOWALL' }
    config.middleware.use ExceptionNotification::Rack, email: {
        deliver_with: :deliver, email_prefix: "[MarKsystemsApp: DEFAULT PROJECT] - #{Rails.env.upcase} | ",
        sender_address: %('Errors Notifier' <support@lotvue.com>),
        exception_recipients: %w[errors@lotvue.com] # For testing purposes, please feel free to add your email ID for any debugging purposes
    }
end
