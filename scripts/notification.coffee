cronJob = require('cron').CronJob

word = [
      "こい"
      "りす"
    ]
random = (n) ->
  Math.floor(Math.rondom() * n)

module.exports = (robot) ->

  cronjob = new cronJob('18 * * * * 1-5', () =>
    envelope = room: "slackstudy"
    robot.send envelope, word[random(word.length)]
  )

  cronjob.start()