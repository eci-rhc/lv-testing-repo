Rails.application.configure do

    config.cache_classes = true

    config.eager_load = true

    config.consider_all_requests_local       = false

    config.action_controller.perform_caching = true

    config.read_encrypted_secrets = true

    config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

    config.assets.js_compressor = Uglifier.new(:harmony => true)

    # config.assets.css_compressor = :sass

    config.assets.compile = false

    config.log_level = :info

    config.log_tags = [ :request_id ]

    config.action_mailer.raise_delivery_errors = false

    config.action_mailer.perform_caching = false

    config.i18n.fallbacks = true

    config.require_master_key = true

    config.active_support.deprecation = :notify

    config.action_mailer.default_url_options = { :host => 'defaultproject.stg.lotvue.com' }
    config.active_storage.service = :amazon_staging
    config.action_mailer.smtp_settings = {
        address: "smtp.gmail.com",
        port: 587,
        authentication: "plain",
        enable_starttls_auto: true,
        user_name: Rails.application.credentials.dig(Rails.env.to_sym, :google, :gmail_username),
        password:  Rails.application.credentials.dig(Rails.env.to_sym, :google, :gmail_password)
    }

    config.log_formatter = ::Logger::Formatter.new

    config.active_record.dump_schema_after_migration = false

    # config.cache_store = :dalli_store, {:expires_in => 1.day, :compress => true}

    if ENV["RAILS_LOG_TO_STDOUT"].present?
        logger           = ActiveSupport::Logger.new(STDOUT)
        logger.formatter = config.log_formatter
        config.logger    = ActiveSupport::TaggedLogging.new(logger)
    end

    # config.active_record.migration_error = :page_load
    config.action_dispatch.default_headers = {'X-Frame-Options' => 'ALLOWALL' }
end
