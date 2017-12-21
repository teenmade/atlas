module.exports = (robot) ->

  robot.respond /request (.*)/i, (res) ->
    feature = res.match[1]
    room =  'nhuebecker'

    robot.messageRoom room, "Feature Request: #{feature}"
    res.reply "Okie Dokie! Adding #{feature} to the list!"