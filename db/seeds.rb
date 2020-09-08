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


CreditCard.destroy_all
User.destroy_all
# search_url= "https://api.ccstack.io/v1/search/banks?api_key="
# count = 1
# base_url = "https://api.ccstack.io/v1/discover/cards?page=#{count}&api_key="
# a = ENV["results"]
User.create(name: "Victor")

puts "done"
# page=#{count}&
# binding.pry
# file = File.read("storage/creditcards.txt")
# # file_body = file.body
# cc_info = JSON.parse(file)
# binding.pry

ccstack_api = ENV["ccstack"]
cc_api_data = RestClient.get("https://api.ccstack.io/v1/discover/cards?api_key=#{ccstack_api}")
api_body = cc_api_data.body
cc_info = JSON.parse(api_body)
# [{""}{""}{""}]
# earn_description: "No rewards outside of Avenue purchases.", 
# titles.map{|title| title.to_s}

# p b_movies=movies.select{|movie| movie[:title].downcase.include?("b")}.map{|movie| movie[:id]}
# titles.select{|title| titles[:title]}

count = 1
while CreditCard.all.length < 2 do
    cc_info["results"].each do |cc|
        
        json_rewards = cc["rewards"].to_json
        CreditCard.create(
            user_id: User.first.id,
            name: cc["original_title"],
            annual_fee: cc["fee"],
            category: cc["rewards_type"],
            earn_description: json_rewards
            # earn_description: ["blah","blah"]
            # earn_description: [{ title: "blah", title: "blah" }]
            # titles.each do |title|
            #     puts title
            # end
        )
        end
        cc_info = JSON.parse(RestClient.get("https://api.ccstack.io/v1/discover/cards?page=#{count}&api_key=#{ccstack_api}"))
        count += 1
end

# puts "seeded"


# t.string :name
# t.integer :accrued_points
# t.integer :accrued_cash
# t.date :point_expirations

# t.timestamps


# t.string "card_name"
#     t.integer "annual_fee"
#     t.date "approval_date"
#     t.integer "bonus_amount"
#     t.integer "bonus_spend"
#     t.string "bonus_month_period"
#     t.integer "percentage_earn"
#     t.string "earn_description"
#     t.integer "category"
#     t.string "bank_name"
#     t.integer "user_id"

binding.pry