# Description:
#   Let's users let Atlas know how he is doing
#
# Commands:
#   none
#
module.exports = (robot) ->
    robot.brain.set 'botScore', 0 

    robot.respond /good job/i, (res) ->
        score= robot.brain.get('botScore')
        if score < 100
            res.reply "I try my best!"
            robot.brain.set 'botScore', score+1
        else 
            res.reply "I try my best!"

    robot.respond /bad job/i, (res) ->
        score= robot.brain.get('botScore')
        res.reply "What can I do better?"
        robot.brain.set 'botScore', score-1
    
    robot.respond /score/i, (res) ->
        score= robot.brain.get('botScore')
        res.reply "Right now I have *#{score}* points"

    robot.respond /some command/i, (msg) ->
        role = 'admin'
        user = robot.brain.userForName(msg.message.user.name)
        return msg.reply "#{name} does not exist" unless user?
        unless robot.auth.hasRole(user, role)
            msg.reply "Access Denied. You need role #{role} to perform this action."
            return
        # Some commandy stuff
        msg.reply 'Command done!'