Sidekiq.configure_server do |config|
  config.redis = {
    url: "redis://#{Rails.application.credentials.dig(Rails.env.to_sym, :redis, :host)}:#{Rails.application.credentials.dig(Rails.env.to_sym, :redis, :port)}/#{Rails.application.credentials.dig(Rails.env.to_sym, :redis, :db)}",
    network_timeout: 20,
    pool_timeout: 20
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: "redis://#{Rails.application.credentials.dig(Rails.env.to_sym, :redis, :host)}:#{Rails.application.credentials.dig(Rails.env.to_sym, :redis, :port)}/#{Rails.application.credentials.dig(Rails.env.to_sym, :redis, :db)}",
    network_timeout: 20,
    pool_timeout: 20
  }
end
