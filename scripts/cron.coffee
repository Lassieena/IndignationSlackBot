cronJob = require('cron').CronJob

random = (n) -> Math.floor(Math.random() * n)

hogo = (msg) ->
    word = [
      "なんか面白い話してよ!!"
    ]
    envelope = room: "slackstudy"
    msg.send envelope, '@here' + word[random(word.length)]
    return

module.exports = (robot) ->

  cronjob = new cronJob('35 10 * * * 1-5', hogo(robot))

  cronjob = new cronJob('35 11 * * * 1-5', hogo(robot))

  cronjob = new cronJob('35 12 * * * 1-5', hogo(robot))

  cronjob = new cronJob('05 14 * * * 1-5', hogo(robot))

  cronjob = new cronJob('05 15 * * * 1-5', hogo(robot))

  cronjob = new cronJob('05 16 * * * 1-5', hogo(robot))




  cronjob.start()