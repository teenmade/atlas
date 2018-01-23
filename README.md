# Λtlas

Atlas is a chat bot built on the [Hubot][hubot] framework.

[hubot]: https://hubot.github.com/

### Running Atlas Locally

You can test Atlas by running the following.

You can start Atlas locally by running:

    % bin/hubot

You'll see some start up output and a prompt:

    [Sat Feb 28 2015 12:38:27 GMT+0000 (GMT)] INFO Using default redis on localhost:6379
    Atlas>

Then you can interact with Atlas by typing `Atlas help`.

    Atlas> Atlas help
    Atlas animate me <query> - The same thing as `image me`, except adds [snip]
    Atlas help - Displays all of the help commands that Atlas knows about.
    ...

### Scripting
#### We have built the following scripts:
- greetings.coffee
    - It takes care of any hellos goodbyes or intros

### external-scripts
#### We use the following external-scripts:
 - "hubot-diagnostics" 
 - "hubot-help" 
 - "hubot-pugme" 
 - "hubot-rules" 
 - "hubot-shipit" 
 - "hubot-annoying-song" 
 - "hubot-redis-brain" 
 - "hubot-murder"

You can find more scripts [here][hubot-scripts]

[hubot-scripts]: https://github.com/github/hubot-scripts

##  Persistence

If you are going to use the `hubot-redis-brain` package (strongly suggested),
you will need to add the Redis to Go addon on Heroku which requires a verified
account or you can create an account at [Redis to Go][redistogo] and manually
set the `REDISTOGO_URL` variable.

    % heroku config:add REDISTOGO_URL="..."

If you don't need any persistence feel free to remove the `hubot-redis-brain`
from `external-scripts.json` and you don't need to worry about redis at all.

[redistogo]: https://redistogo.com/


### Deploying to UNIX or Windows

If you would like to deploy to either a UNIX operating system or Windows.
Please check out the [deploying hubot onto UNIX][deploy-unix] and [deploying
hubot onto Windows][deploy-windows] wiki pages.

[heroku-node-docs]: http://devcenter.heroku.com/articles/node-js
[deploy-heroku]: https://github.com/github/hubot/blob/master/docs/deploying/heroku.md
[deploy-unix]: https://github.com/github/hubot/blob/master/docs/deploying/unix.md
[deploy-windows]: https://github.com/github/hubot/blob/master/docs/deploying/windows.md
