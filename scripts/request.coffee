module.exports = (robot) ->

    robot.respond /request (.*)/i, (res) ->
        feature = res.match[1]
        res.reply "Okie Dokie! Adding #{feature} to the list!"


    robot.hear /Sam-I-am/i, (res) ->
        room =  res.envelope.user.name
        robot.messageRoom room, "That Sam-I-am\nThat Sam-I-am\nI do not like\nthat Sam-I-am"    