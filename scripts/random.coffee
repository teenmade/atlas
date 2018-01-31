# Description:
#   Example scripts that do random things
#
# Notes:
#   They are pretty silly and don't do much for day to day use!
#   Enjoy!!!
#
# Check out the rest of the code:

module.exports = (robot) ->

  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.respond /open the (.*) door/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.reply "I'm afraid i can't let you do that"
    else
      res.reply "Opening #{doorType} doors"

  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly backed pie"

  lulz = ['lol', 'rofl', 'lmao']

  robot.respond /lulz/i, (res) ->
    res.send res.respond lulz

  answer = process.env.ATLAS_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING

  robot.respond /what is the answer to the ultimate question of life/i, (res) ->
    unless answer?
      res.send "Missing ATLAS_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING"
      return
    res.send "#{answer}, but what is the question?"

  robot.respond /you are a little slow/i, (res) ->
    setTimeout () ->
      res.send "Who you calling 'slow'?"
    , 5 * 1000
