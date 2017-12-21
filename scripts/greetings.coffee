# Description:
#   Scripts that will respond to greetings
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.

module.exports = (robot) ->
    enterReplies = ['Hi', 'Hey', 'Heyo :ocean:', 'Hello friend']
    leaveReplies = ['Are you still there?', 'Bye :cry:', 'Oh no... did I say something wrong?']

    robot.enter (res) ->
        res.send res.random enterReplies
    robot.leave (res) ->
        res.send res.random leaveReplies

    robot.respond /say hello/i, (res) ->
        res.send "Hey @channel! I'm Atlas! I'm supposed to do something around here, but @itsmesterling hasn't told me yet...
        If you have any ideas on what I should do let me know by saying `@atlas request <feature>`"
