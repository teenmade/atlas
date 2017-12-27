module.exports = (robot) ->

    robot.respond /request (.*)/i, (res) ->
        feature = res.match[1]
        res.reply "Okie Dokie! Adding #{feature} to the list!"