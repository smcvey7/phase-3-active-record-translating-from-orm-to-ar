ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])
require 'active_record'
require 'pry'

require_relative '../lib/dog'

ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "./db/test.sqlite3"
)

binding.pry
'hi'