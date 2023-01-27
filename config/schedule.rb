require_relative 'application'
require 'lotvue_core'
require File.expand_path(File.dirname(__FILE__) + '/environment')
# load LotvueCore::Engine.root.join('config', 'schedule.rb')
case Rails.env
when 'beta'
  database_host = 'lotvue-dev-instance-cluster.cluster-cd4u3icqnc21.us-east-1.rds.amazonaws.com'
  database_username = Rails.application.credentials.dig(Rails.env.to_sym, :rds, :username)
  database_password = Rails.application.credentials.dig(Rails.env.to_sym, :rds, :password)
when 'production'
  database_host = 'lotvue-production-cluster.cluster-cdpsatjasj4w.us-east-1.rds.amazonaws.com'
  database_username = Rails.application.credentials.dig(Rails.env.to_sym, :rds, :username)
  database_password = Rails.application.credentials.dig(Rails.env.to_sym, :rds, :password)
else
  database_host = 'localhost'
  database_username = Rails.application.credentials.dig(Rails.env.to_sym, :database, :username)
  database_password = Rails.application.credentials.dig(Rails.env.to_sym, :database, :password)
end
database_connection_details = {
  adapter: 'mysql2',
  host: database_host,
  username: database_username,
  password: database_password,
  database: Rails.application.credentials.dig(Rails.env.to_sym, :database, :name),
  pool: 5
}
ActiveRecord::Base.establish_connection(database_connection_details)
common_schedule = File.expand_path(LotvueCore::Engine.root.join('config', 'schedule.rb'), __FILE__)
instance_eval File.read(common_schedule), common_schedule