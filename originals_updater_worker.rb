require 'json'
require 'httparty'

API_BASE_URI = 'http://newsdynamo.herokuapp.com'
API_VER = '/api/v1/'

def api_url(resource)
	URI.join(API_BASE_URI, API_VER, resource).to_s
end

puts "worker started!"
puts "my task_id is #{@iron_task_id}"
puts "parameters: '#{params}'"

saved_originals = HTTParty.get api_url("originalnews")
#saved_originals.each do |original|
#	original_url = api_url("originalnews")
#	results = HTTParty.get original_url
	#puts "updated: #{original['result']}"
#end
