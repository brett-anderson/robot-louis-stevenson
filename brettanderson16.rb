#!/usr/bin/env ruby

require 'rubygems'
require 'chatterbot/dsl'

#
# this is the script for the twitter bot brettanderson16
# generated on 2014-08-31 17:45:31 -0500
#

consumer_key 'Qd1qwlThXulvtLzUoVDBMIkNl'
consumer_secret 'imohrKw6MhtoRFQQqaCdEFcKwmt6hEVvwztWIxTl0fjwBrUOz9'

secret 'F5yAsYX4Wycoz4AT8xCRvi61UskKbLSANHKrn9KkW2je4'
token '279554188-U36VpqRUJIn8k7jAGJPb00GWw304JsUH8gJ0jbSG'

# remove this to send out tweets
debug_mode

# remove this to update the db
no_update
# remove this to get less output when running
verbose

# here's a list of users to ignore
blacklist "abc", "def"

# here's a list of things to exclude from searches
exclude "hi", "spammer", "junk"

search "keyword" do |tweet|
 reply "Hey #USER# nice to meet you!", tweet
end

replies do |tweet|
  reply "Yes #USER#, you are very kind to say that!", tweet
end
