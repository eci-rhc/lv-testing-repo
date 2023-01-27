# $redis = Redis::Namespace.new(Rails.application.class.parent.to_s.underscore, redis: Redis.new(network_timeout: 20, pool_timeout: 20))
Redis.current = Redis.new(
  host: Rails.application.credentials.dig(Rails.env.to_sym, :redis, :host),
  port: Rails.application.credentials.dig(Rails.env.to_sym, :redis, :port),
  db: 4,
  network_timeout: 20, pool_timeout: 20
)