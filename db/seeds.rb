require_relative '../config/environment'
require 'rest-client'
require 'json'
require 'pry'

User.destroy_all
CreditCard.destroy_all
UserCreditCard.destroy_all

User.create(name: 'Victor')

puts 'User created'

ccstack_api = ENV['ccstack']

count = 1
while CreditCard.all.length < 5
	# increase length to seed multiple pages of credit cards
	cc_info =
		JSON.parse(
			RestClient.get(
				"https://api.ccstack.io/v1/discover/cards?page=#{count}&api_key=#{ccstack_api}"
			)
		)
	count += 1
	cc_info['results'].each do |cc|
		CreditCard.create(
			name: cc['original_title'],
			annual_fee: cc['fee'],
			category: cc['rewards_type'],
			earn_description: cc['rewards'].map{|reward| reward["title"]}
			# earn_description: cc['rewards'][0]["title"]
		)
		# cc_info["results"][0]["rewards"][0]["title"]
		# json_rewards = cc["rewards"].to_json,
	end
end

puts "Credit cards seeded"

10.times do
	UserCreditCard.create(
		user_id: User.all.sample.id, credit_card_id: CreditCard.all.sample.id
	)
end

puts "Credit cards owned by user seeded"

binding.pry # a = ENV["results"] # base_url = "https://api.ccstack.io/v1/discover/cards?page=#{count}&api_key=" # count = 1 # search_url= "https://api.ccstack.io/v1/search/banks?api_key="
