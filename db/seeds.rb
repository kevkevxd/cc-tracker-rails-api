# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'

a = ENV["cc"]
cc_api_data = RestClient.get(a)
cc_info = JSON.parse(cc_api_data)
ccstack = ENV["ccstack"]
