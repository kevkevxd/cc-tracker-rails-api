require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'


User.destroy_all
CreditCard.destroy_all
UserCreditCard.destroy_all
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
        CreditCard.create(
            # json_rewards = cc["rewards"].to_json,
            name: cc["original_title"],
            annual_fee: cc["fee"],
            category: cc["rewards_type"],
            earn_description: cc["rewards"].to_json

        )
        # cc_info["results"][0]["rewards"][0]["title"]
        end
        cc_info = JSON.parse(RestClient.get("https://api.ccstack.io/v1/discover/cards?page=#{count}&api_key=#{ccstack_api}"))
        count += 1
end

10.times do
    UserCreditCard.create(user_id: User.all.sample.id, credit_card_id: CreditCard.all.sample.id)
end

binding.pry